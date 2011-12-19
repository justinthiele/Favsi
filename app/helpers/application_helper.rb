module ApplicationHelper
  
  include ActsAsTaggableOn::TagsHelper
  
  
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end
  
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, '#{association}', '#{escape_javascript(fields)}')" )
  end
  
  def link_to_add_fields_show_page(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields-show-page", :f => builder)
    end
    link_to_function(name, "add_fields(this, '#{association}', '#{escape_javascript(fields)}')" )
  end
  
  
  def avatar_url(user)
   if user.avatar.present?
      user.avatar.med_avatar.url
    else
      default_url = "#{root_url}images/favsi-user.png"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?size=185&d=#{CGI.escape(default_url)}" 
    end
  end
  
  def sm_avatar_url(user)
   if user.avatar.present?
      user.avatar.sm_avatar.url
    else
      default_url = "#{root_url}images/favsi-user-sm.png"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?size=48&d=#{CGI.escape(default_url)}" 
    end
  end

  
end

