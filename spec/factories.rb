# This will guess the User class
Factory.define :company do |c|
  c.sequence(:name){|i| "Cyberdyne Systems #{i}"}
  c.sequence(:city){|i| "My city #{i}"}
end

Factory.define :project do |p|
  p.sequence(:name){|i| "Super cool smart cybernetic killing machine."}
end