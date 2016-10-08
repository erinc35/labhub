require 'rails_helper'

RSpec.describe Proposal, type: :model do
  it {should have_db_column( :title)}
  it {should have_db_column( :abstract)}
  it {should have_db_column( :status)}

  it {should_validate_presence_of ( :title )}
  it {should_validate_presence_of ( :abstract )}
  it {should_validate_presence_of ( :status )}
end
