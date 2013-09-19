require 'spec_helper'

describe CustomerCollection do
  it {should have_valid(:customer_id).when(1,4,39)}
  it {should_not have_valid(:customer_id).when(nil, -32, "abc")}


  it {should have_valid(:collection_id).when(1,4,39)}
  it {should_not have_valid(:collection_id).when(nil, -32, "abc")}
end
