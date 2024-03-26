require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/projects.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Project.count, data.length
  end

  test "show" do
    get "/projects/#{Project.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "category_id", "title", "description", "goal_amount", "start_date", "end_date", "created_at", "updated_at"], data.keys
  end
end
