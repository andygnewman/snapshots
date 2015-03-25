require 'spec_helper'

describe User, type: :model do

  it 'should have no posts associated with it when created' do
    user = User.new(email: 'john@test.com', password: 'testtest', password_confirmation: 'testtest')
    expect(user.has_no_snapshots?).to be true
  end


end
