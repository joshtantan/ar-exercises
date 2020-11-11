class Store < ActiveRecord::Base
  has_many :employees

  validate :name_cannot_have_less_than_3_chars, :revenue_cannot_be_negative, :available_apparel_cannot_be_both_false

  def name_cannot_have_less_than_3_chars
    if name.size < 3
      errors.add(:name, "Store name cannot have less than 3 characters")
    end
  end

  def revenue_cannot_be_negative
    if annual_revenue.present? && annual_revenue < 0
      errors.add(:annual_revenue, "Store annual revenue cannot be negative")
    end
  end

  def available_apparel_cannot_be_both_false
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "Store cannot have no men's apparel if no women's apparel are available")
      errors.add(:womens_apparel, "Store cannot have no women's apparel if no men's apparel are available")
    end
  end
end
