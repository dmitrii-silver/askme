class Question < ApplicationRecord

  belongs_to :user

  validates :text, :user, presence: true
  validates :text, length: { maximum: 255, too_long: "is too long (maximum is 255 characters)" }

end
