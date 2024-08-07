class Student < ApplicationRecord
  scope :contains_name, ->(name) { where("first_name = ? OR last_name = ?", name, name) }

  def to_s
    "#{first_name} #{last_name}"
  end
end
