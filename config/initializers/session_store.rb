# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blog_rdavila_2009_session',
  :secret      => 'aae4c6eed8405644c2dedc008e3474b1c3056d8e7b472d76179deb146d27e4bbf310f0ab03a59576d53212e087816192446742f48e74af724cfde27571a74dcc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
