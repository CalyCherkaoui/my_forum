class Author < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, uniqueness: true
  validates :username, uniqueness: true, presence: true
  has_one :profile
  accepts_nested_attributes_for :profile, reject_if: :all_blank, allow_destroy: true, update_only: true
end
