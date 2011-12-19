class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :avatar, :name, :bio, :homepage
  
  has_friendly_id :username, :use_slug => true

  has_many :authentications #for omniauth
  has_many :lists, :order => 'updated_at DESC, title ASC',
                   :dependent => :nullify 
  validates_presence_of :username, :message => ": Please choose a username."
  validates_uniqueness_of :username, :message => ": Already taken, sorry."

  
  mount_uploader :avatar, ImageUploader
  
  
  def apply_omniauth(omniauth)
    self.email = omniauth['user_info']['email'] if email.blank?
    self.username = omniauth["user_info"]["nickname"] unless omniauth["user_info"]["nickname"].nil?
    self.name = omniauth["user_info"]["name"] unless omniauth["user_info"]["name"].nil?
    self.bio = omniauth["user_info"]["description"] unless omniauth["user_info"]["description"].nil?
    self.avatar_external = omniauth["user_info"]["image"] unless omniauth["user_info"]["image"].nil?
    # pulling the homepage is ugly because the urls come in a hash without consistent keys
    self.homepage = omniauth["user_info"]["urls"].first[1] unless omniauth["user_info"]["urls"].first[1].nil?
    authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  end
  
  def password_required?
    (authentications.empty? || !password.blank?) && super
  end
  
  
# to remove the current password requirement when updating user attributes
  def update_with_password(params={})
    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if
        params[:password_confirmation].blank?
    end
    update_attributes(params)
  end


end
