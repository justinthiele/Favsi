user = User.create :email => 'mary@example.com',
                   :password => 'guessit', 
                   :password_confirmation => 'guessit'

list = user.lists.new :title => 'favorite albums',
       item = Item.create(:body => "bright eyes - lifted", :link => "http://link.com")
       list.items << item
list.save


list = user.lists.new :title => 'favoriete movies',
       item = Item.create(:body => "american movie", :link => "http://link.com")
       list.items << item
list.save


list = user.lists.new :title => 'favoriete books',
       item = Item.create(:body => "beginning rails 3", :link => "http://link.com")
       list.items << item
list.save