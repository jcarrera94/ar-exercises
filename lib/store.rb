class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :mens_womens_appareal,
  def mens_womens_appareal
    if (!mens_apparel && !womens_apparel)
      errors.add(:mens_womens_appareal, "Stores must carry at least one of the men's or women's apparel")
    end
  end
end
