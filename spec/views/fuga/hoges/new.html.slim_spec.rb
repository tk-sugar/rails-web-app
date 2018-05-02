require 'rails_helper'

RSpec.describe "fuga/hoges/new", type: :view do
  before(:each) do
    assign(:fuga_hoge, Fuga::Hoge.new())
  end

  it "renders new fuga_hoge form" do
    render

    assert_select "form[action=?][method=?]", fuga_hoges_path, "post" do
    end
  end
end
