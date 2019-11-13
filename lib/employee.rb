class Employee < ActiveRecord::Base
  belongs_to :store, class_name: "store", foreign_key: "store_id"
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 90 }
end
