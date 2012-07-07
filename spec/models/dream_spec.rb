require 'spec_helper'

describe Dream do

  [ true, false ].each do |boolean|
    context "visible = #{boolean}" do
      before do
        subject.visible = boolean
      end

      [ :name, :location, :age, :description ].each do |attribute|
        it { send(boolean ? :should : :should_not, validate_presence_of(attribute) ) }
      end
    end
  end

  context "description length > 140 characters" do
    before do
      subject.description = "."*141
    end

    it { should have_errors_on(:description).with_message("must be less than 140 characters")}
  end
end
