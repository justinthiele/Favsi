ActiveAdmin.register AdminUser do
    form do |f|
      f.inputs "Admin Details" do
        f.input :email
        f.input :username
      end
      f.buttons
    end
end
