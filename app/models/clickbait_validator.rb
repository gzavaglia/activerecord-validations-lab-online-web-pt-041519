class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    if !record.title.include?
  end
end