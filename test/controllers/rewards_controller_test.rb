require "test_helper"

class RewardsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/rewards.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Reward.count, data.length
  end

  test "show" do
    get "/rewards/#{Reward.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "project_id", "description", "amount", "limit", "delivery_date", "created_at", "updated_at"], data.keys
  end
end
