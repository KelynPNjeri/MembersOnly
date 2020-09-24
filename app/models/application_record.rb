class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  after_validation :clean_paperclip_errors

  def clean_paperclip_errors
    errors.delete(:user)
  end
end
