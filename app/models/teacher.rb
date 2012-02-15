class Teacher < ActiveRecord::Base
  belongs_to :chair
  has_many :wishes


  validates :f_name, :presence => true, 
                         
                        :length=>{:minimum => 2}
  
  validates :s_name, :presence => true,
                         
                         :length=>{:minimum => 2}

  validates :l_name, :presence => true,
                          
                         :length=>{:minimum => 2}
end
