require 'rails_helper'

RSpec.describe "fuga/hoges/index", type: :view do
  before(:each) do
    assign(:fuga_hoges, [
      Fuga::Hoge.create!(),
      Fuga::Hoge.create!()
    ])
  end

  it "renders a list of fuga/hoges" do
    render
  end
end
