class Near < ApplicationRecord
  validates :station_name, presence: true
  validates :line_name, presence: true
  validates :minutes_foot, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  belongs_to :prop
end
