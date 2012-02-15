class Term < ActiveRecord::Base
   has_many :wish

  validates :name, :presence => true, 
                         
                        :uniqueness => true,
                        :length=>{:minimum => 1}
  
  validates :short_name, :presence => true,
                         
                         :uniqueness => true,
                         :length=>{:minimum => 1}
end
