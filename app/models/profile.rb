class Profile < ApplicationRecord
  belongs_to :author, optional: true

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  # validates :email, :format => VALID_EMAIL_REGEX
end