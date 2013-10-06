require 'spec_helper'

describe ArtworkCollection do
  it {should belong_to(:artwork)}
  it {should belong_to(:collection)}

  it {should validate_presence_of(:artwork)}
  it {should validate_presence_of(:collection)}

end
