class Project < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :company
end
