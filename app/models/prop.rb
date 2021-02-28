class Prop < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :rent, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :address, presence: true
  validates :age, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  has_many :nears, dependent: :destroy
  accepts_nested_attributes_for :nears, allow_destroy: true
end
