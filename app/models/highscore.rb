require('ipaddr')

class Highscore < ActiveRecord::Base

	validates :name, :score, presence: true
	validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	validates :name, length: { maximum: 30 }

	def ip=(newIP)
		if newIP.is_a? String
			num = IPAddr.new(newIP).to_i
		end
		@ip = num || newIP
	end

	def ip
		IPAddr.new(@ip, 2).to_s #ipv4 only
	end
end
