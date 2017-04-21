class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_lower_bound,  presence: true
  validates :wage_upper_bound,  presence: true
  validates :wage_lower_bound, numericality: { greate_than: 0}

  scope :published, -> { where(is_hidden: false)}
  scope :recent, -> { order('created_at DESC')}

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

#  validates :wage_upper_bound, numericality: { greate_then: wage_lower_bound }
end
