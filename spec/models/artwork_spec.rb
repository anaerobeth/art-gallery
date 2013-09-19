require 'spec_helper'

describe Artwork do
  it {should have_valid(:artist_id).when(1, 2, 4)}
  it {should_not have_valid(:artist_id).when(nil)}

  it {should have_valid(:sale_price).when(500, 3500, 20000)}
  it {should_not have_valid(:sale_price).when(nil, -200, 'abc')}

  it {should have_valid(:category_id).when(4,10)}
  it {should_not have_valid(:category_id).when(nil)}
end
