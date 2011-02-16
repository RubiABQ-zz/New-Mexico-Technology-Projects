class Company < ActiveRecord::Base
  validates :name, :presence => true
  validates :city, :presence => true
  has_many :projects
end
