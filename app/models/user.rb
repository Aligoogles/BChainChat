class User < ApplicationRecord
  #Posts
  has_many :posts, dependent: :destroy

  #user that likes a post
  acts_as_voter

  #Reply
  has_many :replies, dependent: :destroy

  #profile image upload
  mount_uploader :image, ImageUploader

  #events
  has_many :events, dependent: :destroy

  validates_integrity_of  :image
  validates_processing_of :image
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true, length: { minimum: 2, maximum: 15}
  validates :last_name, presence: true, length: { minimum: 2, maximum: 20}
  validates :screen_name, presence: true, length: { minimum: 2, maximum: 10}
  validates_uniqueness_of   :screen_name
  validates :age, presence: true, numericality: { greater_than: 18 }
  validates :phone_number, presence: true, numericality: { greater_than: 1 }
  validates :country, presence: true, length: { minimum: 2, maximum: 20}
  validates :profession, presence: true, length: { minimum: 2, maximum: 30}
  validates :interest, presence: true, length: { minimum: 2, maximum: 50}

  validates :email, format: URI::MailTo::EMAIL_REGEXP
  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record? 

  def self.authenticate(email, password)
    user = User.find_for_authentication(email: email)
    user&.valid_password?(password) ? user : nil
  end

  #Messaging
  scope :all_except, ->(user) { where.not(id: user) }
  after_create_commit { broadcast_append_to 'users' }
  has_many :messages

 
  private
  def set_default_role
    self.role ||= :user  
  end 

  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end
  
end
