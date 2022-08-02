class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, format: URI::MailTo::EMAIL_REGEXP
  enum role: [:user, :admin]

  def self.authenticate(email, password)
    user = User.find_for_authentication(email: email)
    user&.valid_password?(password) ? user : nil
  end
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user  
  end  

  #Posts
  has_many :posts

  #user that likes a post
  acts_as_voter

  has_many :replies, dependent: :destroy

  #profile image upload
  mount_uploader :image, ImageUploader

  validates_integrity_of  :image
  validates_processing_of :image
 
  private

  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end
  
end
