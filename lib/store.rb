class Store < ActiveRecord::Base
  has_many :employees, inverse_of: :store
  validates :name, :annual_revenue, presence: true 
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # validate :has_clothes?

  before_destroy :check_for_employess

private
  # def has_clothes?
  #   if !mens_apparel && !womens_apparel
  #     errors.add(:mens_apparel, "must have men's or womens clothing")
  #     errors.add(:womens_apparel, "must have men's or womens clothing")
  #   end
  # end

  def check_for_employess
    if self.employees.any?
      throw :abort
    end
  end

end



# Add validations to two models to enforce the following business rules:
  # Employees must always have a first name present
  # Employees must always have a last name present
  # Employees have a hourly_rate that is a number (integer) between 40 and 200
  # Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
# Stores must always have a name that is a minimum of 3 characters
# Stores have an annual_revenue that is a number (integer) that must be 0 or more
# BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
# Ask the user for a store name (store it in a variable)
# Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
# Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record