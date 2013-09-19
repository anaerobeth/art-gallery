require 'spec_helper'

describe ArtworkCustomer do
  it {should have_valid(:artwork_id).when(1,4,39)}
  it {should_not have_valid(:artwork_id).when(nil, -32, "abc")}


  it {should have_valid(:customer_id).when(1,4,39)}
  it {should_not have_valid(:customer_id).when(nil, -32, "abc")}
end
