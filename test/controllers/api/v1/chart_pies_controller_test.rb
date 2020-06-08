require 'test_helper'

class Api::V1::ChartPiesControllerTest < ActionDispatch::IntegrationTest
  test "the truth exec index method" do
    Lang.create(name: 'js', data: 40, color: '#fae500')
    get(all_chart_pies_data_url)
    assert_response 200
  end
end
