# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_getit_session',
  :secret      => 'a75a468092b4364ad0fe8649c680b983ef65f543617453c2b6ab60c721145436346f9ff0359a6b4e4d0361181ba02c8ebca9954485523e91c1275e0e361f1d36'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
