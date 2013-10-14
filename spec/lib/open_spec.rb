require 'spec_helper'

describe "開区間3_8オブジェクト" do
  before :each do
    @or = Open.new(3, 8)
  end
  subject { @or }
  its(:lowerEndPoint) { should == 3 }
  its(:upperEndPoint) { should == 8 }
end

describe "開区間3_8オブジェクト" do
  before :each do
    @or = Open.new(3, 8)
  end
  subject { @or }
  describe "開区間に含む" do
    it { should be_contains(5) }
  end
  describe "開区間に含まない" do
    it { should_not be_contains(3) }
    it { should_not be_contains(8) }
  end
end
