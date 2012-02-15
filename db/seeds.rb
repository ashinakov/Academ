#создание администратора
u=User.new(:login=>"admin", :password=>"admin2", :password_confirmation=>"admin2")
u.role=1
u.save
