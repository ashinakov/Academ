class Student < ActiveRecord::Base
  belongs_to :group

  

  validates :f_name,  
                         
                        :length=>{:minimum => 2}
  
  validates :s_name, 
                         
                         :length=>{:minimum => 2}

  validates :l_name, 
                          
                         :length=>{:minimum => 2}
end
