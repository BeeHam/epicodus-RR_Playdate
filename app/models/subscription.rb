class Subscription < ActiveRecord::Base
  belongs_to :plan

  validates :email, presence: true
end
