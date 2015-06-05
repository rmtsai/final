class Message < ActiveRecord::Base
  belongs_to :user
  validates :body, presence: true
  belongs_to :doctor
  belongs_to :patient

end
