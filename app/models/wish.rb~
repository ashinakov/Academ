class Wish < ActiveRecord::Base
  belongs_to :user
  belongs_to :term

  validates :day, :presence => true, 
                         
                        :length=>{:minimum => 1}
  
  validates :lesson, :presence => true,
                         
                         :length=>{:minimum => 1}
end
