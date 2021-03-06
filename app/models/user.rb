class User < ActiveRecord::Base
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name,presence:true,uniqueness:true,format:{with:/^[a-zA-Z0-9_-]+$/,message:"Must be formatted correctly",multiline: true}
  has_many :statuses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    first_name+" "+last_name
  end

  def gravatar_url
       hash_email = Digest::MD5.hexdigest(email.strip.downcase)
      "http://gravatar.com/avatar/#{hash_email}"
  end
end
