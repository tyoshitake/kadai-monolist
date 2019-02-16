module UsersHelper
  def gravatar_url(user, options={ size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    "https://secure.garavatar.com/avatar/#{gravatar_id}?s=#{size}%d=mp"
  end
end
