class Profile < ApplicationRecord
  belongs_to :author

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  # validates :email, :format => VALID_EMAIL_REGEX

  def social_media

    social = ['blog', 'facebook', 'twitch', 'instagram', 'twitter', 'pinterest', 'linkedin', 'pateron']
    output = {}

    self.attributes.each do |key, value|
      if social.include?(key) && !(value.nil?)
        # output.merge({key => value})
        output[key] = value
      end
    end

    output

  end

end
