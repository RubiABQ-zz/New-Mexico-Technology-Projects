class Project < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :company
  has_and_belongs_to_many :technologies
end
