require 'spec_helper'

describe CustomerCollection do
  it {should belong_to(:collection)}
  it {should belong_to(:customer)}
  it {should validate_presence_of(:customer)}
  it {should validate_presence_of(:collection)}
end
