require 'spec_helper'

describe "Static pages" do

  subject { page }

  before do
    @f1 = Fact.new(info: "Pibley is a lion")
    @f2 = Fact.new(info: "Pibley is a gorilla")
  end

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Pibley Facts') }
    it { should have_selector('title', text: 'Pibley Facts') }
    it { should_not have_selector('title', text: '| Home') }

    describe "facts" do
      it { should have_content(@f1.info) }
      it { should have_content(@f2.info) }
    end
  end
end
