require 'gpgme'

module Jekyll
  class PostSigner < Generator
    def generate(site)
      crypto = GPGME::Crypto.new(:armor => true)
      site.posts.each do |post|
        sig = crypto.sign(post.content)
        post.data["signature"] = sig.read.force_encoding("UTF-8")
      end
    end
  end
end
