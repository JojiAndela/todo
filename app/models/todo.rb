class Todo < ApplicationRecord
  belongs_to :user

  before_create :uncomplete
  validates_presence_of :todo
  validates_presence_of :due
  validates_presence_of :priority
  
  def complete
    self.completed = true
  end

  def uncomplete
    self.completed = false
  end
end
