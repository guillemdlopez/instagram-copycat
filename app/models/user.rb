class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :username, :email, presence: true
  validates :full_name, presence: true
  validates :full_name, format: { with: /\b([A-ZÀ-ÿ][-,a-z. ']+[ ]*)+/,
  message: 'it only allows letters' }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
