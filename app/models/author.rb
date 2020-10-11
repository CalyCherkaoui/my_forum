class Author < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :set_profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, uniqueness: true
  validates :username, uniqueness: true, presence: true
  has_one :profile, dependent: :destroy, autosave: true
  # accepts_nested_attributes_for :profile, allow_destroy: true, update_only: true

  protected

  def set_profile
    Profile.create!({ :author_id => self.id})
  end

end
