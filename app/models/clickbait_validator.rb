class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    if !record.title.include? "Won't Believe"
      record.errors.add(:title, "Must be clickbaity")
    end
  end
end