# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wnycms_session',
  :secret      => '1f70a900b4e487febf6da6a180a547dfa5aca73ae7d7157dd5eae97b226822bd1368ee447534a1a8b7173a9fe6530666dae430d33cb073608e13c970421c6be7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
