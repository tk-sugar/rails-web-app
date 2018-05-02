require 'rails_helper'

RSpec.describe "fuga/hoges/show", type: :view do
  before(:each) do
    @fuga_hoge = assign(:fuga_hoge, Fuga::Hoge.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
