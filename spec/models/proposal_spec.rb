require 'rails_helper'

RSpec.describe Proposal, type: :model do
  it {should have_db_column( :title)}
  it {should have_db_column( :abstract)}
  it {should have_db_column( :status)}
end
