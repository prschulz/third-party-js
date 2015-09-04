module Tokenable
  extend ActiveSupport::Concern

  included do
    before_create :generate_token
  end

  protected

  def generate_token
    self.guid = loop do
      random_token = SecureRandom.hex(4)
      break random_token unless self.class.exists?(guid: random_token)
    end
  end
end
