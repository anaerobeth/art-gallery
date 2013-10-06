require 'spec_helper'

describe Artist do

  it {should have_many(:artworks)}
  it {should have_valid(:first_name).when('James', 'Sue')}
  it {should_not have_valid(:first_name).when(nil, '')}

end
