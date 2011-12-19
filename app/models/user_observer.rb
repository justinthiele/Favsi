class UserObserver < ActiveRecord::Observer
  
  def after_create(user)
    Notifier.welcome_new_user(user).deliver
  end
  
end
