require 'test_helper'

class ProposalTest < ActiveSupport::TestCase
    RSpec.describe Proposal, type: :model do
      it {should have_db_column( :title) }
      it {should have_db_column( :abstract) }
      it {should have_db_column( :status) }
      it should belong_to(:user)
  end
end
