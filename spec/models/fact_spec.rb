# == Schema Information
#
# Table name: facts
#
#  id         :integer          not null, primary key
#  info       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Fact do
  
  before { @fact = Fact.new(info: "Pibley was born as a lion") }

  subject { @fact }

  it { should respond_to(:info) }

  it { should be_valid }

  describe "when info is not present" do
    before { @fact.info = " " }
    it { should_not be_valid }
  end

  describe "when info is too long" do
    before { @fact.info = "a" * 201 }
    it { should_not be_valid }
  end

  describe "when fact with same info is already saved" do
    before do
      fact_with_same_info = @fact.dup
      fact_with_same_info.save
    end

    it { should_not be_valid }
  end
end
