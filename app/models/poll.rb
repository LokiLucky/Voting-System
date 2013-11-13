class Poll < ActiveRecord::Base
  belongs_to :admin
  has_many :options
  validates :question, presence:true
  validates :deadline, date: {after: :start_date, message:"must be after start_date"}
end
