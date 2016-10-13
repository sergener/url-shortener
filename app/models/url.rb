class Url < ActiveRecord::Base
	validates :full_url, presence: true
	# validates :full_url, format

	before_create :generate_short_url, if: :no_short_url_exists?

	private

	def generate_short_url
		self.short_url = SecureRandom.hex(3)
	end
end
