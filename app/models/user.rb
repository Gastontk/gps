class User < ActiveRecord::Base
	has_secure_password
	validates :email, presence: true, uniqueness: true, length: {in:5..50}
	validates :first_name, :last_name, :email, :password, :password_confirmation, presence: true, length: {in:5..50}, :on => :create
	validates :city, :street, :state, :zip, presence: true, :on => :create
	validates :password, :password_confirmation, presence: true, length: {in:5..50}, :on => :update_password

	geocoded_by :full_address
	after_validation :geocode
	# for later better geocoding based on more than zip code
	def full_address
		[street, city, state].compact.join(', ')
  	end
end
