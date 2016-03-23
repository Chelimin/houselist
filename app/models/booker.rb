class Booker < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |booker|
      booker.provider = auth.provider
      booker.uid = auth.uid
      booker.name = auth.info.name
      booker.oauth_token = auth.credentials.token
      booker.oauth_expires_at = Time.at(auth.credentials.expires_at)
      booker.save!
    end
  end
end
