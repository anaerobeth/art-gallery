require 'spec_helper'

describe ArtworkCustomer do
  it {should belong_to(:artwork)}
  it {should belong_to(:customer)}

  it {should validate_presence_of(:artwork)}
  it {should validate_presence_of(:customer)}
end
