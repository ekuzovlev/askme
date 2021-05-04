class Hashtag < ApplicationRecord
  has_many :hashtag_questions
  has_many :questions, through: :hashtag_questions

  before_validation :downcase_hashtag

  validates :tag_name, presence: true, uniqueness: true, length: { maximum: 80 }

  private

  def downcase_hashtag
    tag_name&.downcase!
  end
end
