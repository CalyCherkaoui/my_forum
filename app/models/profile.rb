class Profile < ApplicationRecord
  after_create :add_default_image
  # after_update :size_photo
  belongs_to :author
  has_one_attached :image
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




  private

  def size_photo
    self.image.variant(resize: '300x300!').processed
  end

  def add_default_image
      self.image.attach(io: File.open(Rails.root.join("app", "assets", "images", "default_author_profile.jpg")), filename: 'default_author_profile.jpg', content_type: 'image/jpg')
      # self.image.attach(asset_path("default_author_profile.jpg"))
      self.image.variant(resize: '100x100!').processed
  end

end
