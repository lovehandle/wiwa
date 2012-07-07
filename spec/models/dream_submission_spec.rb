require 'spec_helper'

describe DreamSubmission do
  [ :state, :country, :first_name, :last_name, :email, :dream ].each do |attribute|
    it { should validate_presence_of(attribute) }
  end

  context "submission is domestic" do
    before do
      subject.stub(:domestic?).and_return(true)
    end

    Carmen.state_codes.each do |state|
      it { should allow_value(state).for(:state) }
    end

    it { should_not allow_value("XX").for(:state) }
  end

  context "submission is international" do
    before do
      subject.stub(:domestic?).and_return(false)
    end

    it { should allow_value("XX").for(:state) }
  end

  Carmen.country_names.each do |country|
    it { should allow_value(country).for(:country) }
  end

  context "country = United States" do
    before do
      subject.country = "United States"
    end

    its(:domestic?)      { should be_true }
    its(:international?) { should be_false }
  end

  context "country != United States" do
    before do
      subject.country = "Germany"
    end

    its(:domestic?)      { should be_false }
    its(:international?) { should be_true }
  end

  describe "#location" do
    let(:country) { "United States" }
    let(:city)    { "Portland" }
    let(:state)   { "OR" }

    subject do
      described_class.new(:country => country, :city => city, :state => state)
    end
    context "submission is domestic" do
      its(:location) { should eql("Portland OR") }
    end

    context "submission is international" do
      let(:country) { "Krakow"}
      its(:location) { should eql("Portland Krakow")}
    end
  end
end
