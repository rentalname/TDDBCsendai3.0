require 'spec_helper'

describe "閉区間3_8オブジェクト" do
  before :each do
    @r = MyRange.new(3, 8)
  end
  subject { @r }
  its(:lowerEndPoint) { should == 3 }
  its(:upperEndPoint) { should == 8 }
  its(:to_s) { should == "[3,8]" }
end

describe "閉区間4_9オブジェクト" do
  before :each do
    @r = MyRange.new(4, 9)
  end
  subject { @r }
  its(:lowerEndPoint) { should == 4 }
  its(:upperEndPoint) { should == 9 }
  its(:to_s) {should == "[4,9]" }
end

describe "下端点が上端点より大きい場合" do
  it "エラーが出る" do
    lambda { MyRange.new(8, 3) }.should raise_error(RangeError)
  end
end

describe "閉区間0_9オブジェクト" do
  before :each do
    @r = MyRange.new(0, 9)
  end
  subject { @r }
  describe "閉区間に含む" do
    it { should be_contains(0) }
    it { should be_contains(9) }
  end
  describe "閉区間に含まない" do
    it { should_not be_contains(-1) }
    it { should_not be_contains(10) }
  end
end

describe "閉区間が等しい" do
  before :each do
    @range = MyRange.new(3, 8)
    @target = MyRange.new(3, 8)
  end
  subject { @range }
  it { should == @target }
end

describe "閉区間が等しくない" do
  before :each do
    @range = MyRange.new(3, 8)
    @target = MyRange.new(1, 6)
  end
  subject { @range }
  it { should_not == @target }
end

describe "閉区間が接続している" do
  before :each do
    @range = MyRange.new(3, 8)
    @target = MyRange.new(1, 6)
  end
  subject { @range }
  it { should be_connect(@target) }
  # it do
  #   @range.should be_connect(@target)
  # end
end

describe "閉区間が接続している" do
  describe "含まれる場合" do
    subject { MyRange.new(3,5)}
    target = MyRange.new(0,9)
    it { should be_connect(target)}
  end
  describe "左接続" do
    subject { MyRange.new(5,9) }
    target = MyRange.new(0,5)
    it { should be_connect(target)}
  end
  describe "右接続" do
    subject { MyRange.new(1,5) }
    target = MyRange.new(5,9)
    it{ should be_connect(target) }
  end
  describe "含む場合" do
    subject { MyRange.new(3, 8) }
    target = MyRange.new(8, 15)
    it {should be_connect(target)}
  end
end

describe "閉区間が接続していない" do
  before :each do
    @range = MyRange.new(1, 5)
    @target = MyRange.new(6, 9)
  end
  subject { @range }
  it { should_not be_connect(@target) }
end

describe "開区間3_8オブジェクト" do
  before :each do
    @or = OpenRange.new(3, 8)
  end
  subject { @or }
  its(:lowerEndPoint) { should == 3 }
  its(:upperEndPoint) { should == 8 }
end

describe "開区間3_8オブジェクト" do
  before :each do
    @or = OpenRange.new(3, 8)
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
