class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :name
  validates :email, presence: true
  has_many :images
  has_many :microposts, dependent: :destroy
  #validates :email, uniqueness: {case_sensitive: false}

  before_create :set_name

  def set_name
    p email.inspect
    self.name = email.split("@").first.split(".").first
  end

  def admin?
     email == "marko.siftar@gmail.com"
   end
end
