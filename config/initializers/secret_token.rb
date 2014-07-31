# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

require 'securerandom'
def secure_token
	token_file - Rails.root.join('.secret')
	if File.exist?(token_file)
	# Use the existing token
	File.read(token_file).chomp
else
	# Generate a new token and store it in token_file
	token = SecureRandom.hex(64)
	File.write(token_file, token)
	token
end 
end

SampleApp::Application.config.secret_key_base = 'fe668334f794841e21eb23d177991beb6c15f71171af7188111d9e65e6bfe5fead0644fc062ae952b74ab49d3ce3d021839c09a2c179e95b6a2f428d7dfeb84c'
