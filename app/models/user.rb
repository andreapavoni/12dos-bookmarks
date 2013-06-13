class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  has_many :bookmarks

  validates :username,
    presence: true,
    uniqueness: {case_sensitive: false},
    format: {with: /\w+/}

  def to_param
    self.username
  end
end
