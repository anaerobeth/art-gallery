require 'spec_helper'

describe Artwork do
  it {should have_many(:collections)}
  it {should validate_presence_of(:artist)}
  it {should validate_presence_of(:category)}

  it {should have_valid(:sale_price).when(500, 3500, 20000)}
  it {should_not have_valid(:sale_price).when(nil, -200, 'abc')}

end
