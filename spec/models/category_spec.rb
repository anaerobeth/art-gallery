require 'spec_helper'

describe Category do
  it {should have_valid(:name).when('Sculpture', 'Painting', 'Photography')}
  it {should_not have_valid(:name).when(nil, '', 'bananas')}

end
