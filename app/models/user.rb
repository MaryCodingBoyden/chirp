class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :comments
  has_one :bio

  after_create :create_bio
  before_destroy :destroy_bio

  def full_name
    "#{self.first_name} #{self.last_name}"
  end



  private


  def before_create
    self.build_bio
  end

  def destroy_bio
    self.bio.destroy
  end
end
