class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    if !record.title.include? "Won't Believe"
      
    end
  end
end