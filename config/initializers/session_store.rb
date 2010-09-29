# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pocrails_session',
  :secret      => 'dea6c552b9457289f0e0c3c467d0b3f781e016fa1fef112c01a28bc8ab2d1efe4c316ce5feafb0492ad016cd2fc2f3ed5f763395d851a6b5afab1190453b87d9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
