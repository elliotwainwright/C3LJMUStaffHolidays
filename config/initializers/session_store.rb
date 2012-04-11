# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ljmuholidays_session',
  :secret      => '17c42a634e83eac2d149518e7193d168166925b7d9330b33b323b40211687a5a7ef52d68bb9e030cc52f0b8874b6cf4747ad5b2e6f57e94ee5b9b50b9b148fde'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
