class QrCode < ApplicationRecord
  belongs_to :user
  validates :qr_token, presence: true, uniqueness: true
  validates :url, presence: true, format: { with: URI.regexp }

  def generate_qr_token
    self.qr_token = SecureRandom.hex(10)
    self.save!
  end
end
