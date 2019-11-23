class Comment < ApplicationRecord
  belongs_to :story, dependent: :destroy

  validates :name, presence: true
end
