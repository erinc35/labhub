require 'rails_helper'

RSpec.describe User, type: :model do
  it {should have_db_column( :first_name)}
  it {should have_db_column( :last_name)}
  it {should have_db_column( :full_name)}
  it {should have_db_column( :email)}
  it {should have_db_column( :hashed_password)}
  it {should have_secure_password}
end
