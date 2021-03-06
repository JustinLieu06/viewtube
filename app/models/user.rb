
# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord

  validates :username, :email, :password_digest, :session_token, presence: true
  validates :username, :session_token, :email, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }

  # has_many :videos,
  #   foreign_key: :author_id,
  #   class_name: 'Video'
  has_many_attached :videos

  has_many :likes,
    foreign_key: :author_id,
    class_name: 'Like'

  has_many :dislikes,
    foreign_key: :author_id,
    class_name: 'Dislike'

  has_many :comments,
    foreign_key: :author_id,
    class_name: 'Comment'

  attr_reader :password
  before_validation :ensure_session_token
 
  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return nil if !user
    user.is_password?(password) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  private
  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

end
