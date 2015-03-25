require 'spec_helper'

describe Post, type: :model do

  it { should belong_to(:user) }
  it { should validate_length_of(:title) }

end
