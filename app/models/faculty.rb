class Faculty < ActiveRecord::Base
  has_many :groups
  has_many :chairs

  
  validates :name, :presence => true, 
                         
                        :uniqueness => true,
                        :length=>{:minimum => 1}
  
  validates :short_name, :presence => true,
                         
                         :uniqueness => true,
                         :length=>{:minimum => 1}
 

end
