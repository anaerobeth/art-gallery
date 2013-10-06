require 'spec_helper'

describe Customer do

  it {should have_many(:collections)}

  it {should have_valid(:first_name).when('James', 'Sue')}
  it {should_not have_valid(:first_name).when(nil, '')}

  it {should have_valid(:last_name).when('James', 'Sue')}
  it {should_not have_valid(:last_name).when(nil, '')}

  it {should have_valid(:email).when('james@gmail.com', 'Sue@example.com')}
  it {should_not have_valid(:email).when(nil, '', '323@com')}
end
