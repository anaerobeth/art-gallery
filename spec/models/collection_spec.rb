require 'spec_helper'

describe Collection do
  it {should have_valid(:name).when("modern collection","adam beard")}
  it { should_not have_valid(:name).when(" ", nil)}

end
