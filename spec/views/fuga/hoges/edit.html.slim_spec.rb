require 'rails_helper'

RSpec.describe "fuga/hoges/edit", type: :view do
  before(:each) do
    @fuga_hoge = assign(:fuga_hoge, Fuga::Hoge.create!())
  end

  it "renders the edit fuga_hoge form" do
    render

    assert_select "form[action=?][method=?]", fuga_hoge_path(@fuga_hoge), "post" do
    end
  end
end
