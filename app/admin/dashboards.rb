ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
#  section "Recent Lists" do
#    ul do
#      List.recent(10).collect do |list|
#        li link_to(list.title, admin_list_path(list))
#      end
#    end
#  end
#  
#  section "Recent Users" do
#    ul do
#      User.recent(10).collect do |user|
#        li link_to(user.username, admin_user_path(user))
#      end
#    end
#  end
  
  # == Render Partial Section
  # The block is rendererd within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
#   section "Recent Lists", :priority => 10
#   section "Recent Users", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

end
