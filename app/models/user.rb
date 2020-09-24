class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_attached_file :image, styles: { medium: '64x64', thumb: '100x100>' }
  validates_presence_of :name
  validates_presence_of :username
  validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png']
end
