# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_adriana_session',
  :secret      => '72ff0b3e4e1d39baa1de40c724f5c294eb48eb77ac656bf7a1d4f2fd16ebb3c7cbc785df82d9e47083a6a622c9e52a7ada50a38d6c9cda74d03a1ced18c0b218'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store