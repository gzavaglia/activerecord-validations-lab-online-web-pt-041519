class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  
  def non_clickbait
    if !title.include?("Won't Believe") || !title.include?("Secret") || !title.include?("Guess")
  end
end
