class User < ApplicationRecord
  has_many :prototypes
  has_many :comments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true
  validates :name, presence: true
  validates :encrypted_password, presence: true
end
