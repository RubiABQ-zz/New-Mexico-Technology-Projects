class Technology < ActiveRecord::Base
  validates :name, :presence => true

  has_and_belongs_to_many :projects
#  has_many :companies, :through => :projects
#  def companies
#    projects.collect{|p|p.company}
#  end
  def companies
    projects.map &:company
  end

end
