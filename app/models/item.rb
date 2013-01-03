class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :due_date
  attr_accessible :description, :location, :name, :category, :due_date
end
