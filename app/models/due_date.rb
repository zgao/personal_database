class DueDate < ActiveRecord::Base
  belongs_to :category
  attr_accessible :description, :name, :time_due
end
