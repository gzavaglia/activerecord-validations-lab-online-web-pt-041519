class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  validate :non_clickbait
  
  def non_clickbait
    if title.include?("Won't Believe") || !title.include?("Secret") || !title.include?("Guess") || !title.include?("Top")
      errors.add(:title, "Title is not clickbait-y enough")
    end
  end
end
