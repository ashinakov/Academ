class Chair < ActiveRecord::Base
  belongs_to :faculty
  has_many :teacher

  validates :name, :presence => true, 
                         
                        :uniqueness => true,
                        :length=>{:minimum => 1}
  
  validates :number, :presence => true,
                         
                         :uniqueness => true,
                         :length=>{:minimum => 1}
end
