class User < ApplicationRecord
  belongs_to :tenant
  before_save :hash_password, if: :password_changed?

  def self.authenticate(login, password)
    User.where(
      login: login,
      password: hashed(password)
    ).first
  end

  private

  def hash_password
    self.password = self.class.hashed(password)
  end

  def self.hashed(str)
    Digest::SHA256.hexdigest(str)
  end
end
