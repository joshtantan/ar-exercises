class Employee < ActiveRecord::Base
  belongs_to :store

  validate :first_name_cannot_be_empty, :last_name_cannot_be_empty, :hourly_rate_cannot_be_under_40_or_over_200, :assigned_store_cannot_be_empty

  def first_name_cannot_be_empty
    if !first_name.present?
      errors.add(:first_name, "Employee first name cannot be empty")
    end
  end

  def last_name_cannot_be_empty
    if !last_name.present?
      errors.add(:last_name, "Employee last name cannot be empty")
    end
  end

  def hourly_rate_cannot_be_under_40_or_over_200
    if hourly_rate < 40 || hourly_rate > 200
      errors.add(:last_name, "Employee hourly rate cannot be less than 40 or over 200")
    end
  end

  def assigned_store_cannot_be_empty
    if !store_id.present?
      errors.add(:last_name, "Employee assigned store cannot be empty")
    end
  end
end
