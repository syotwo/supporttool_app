class Emotion < ApplicationRecord
  belongs_to :user

  # validates :sheet, presence: true
end
