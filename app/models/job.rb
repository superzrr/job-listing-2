class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_lower_bound,  presence: true
  validates :wage_upper_bound,  presence: true
  validates :wage_lower_bound, numericality: { greate_than: 0}
#  validates :wage_upper_bound, numericality: { greate_then: wage_lower_bound }
end
