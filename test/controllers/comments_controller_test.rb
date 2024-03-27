require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Test", email: "test@test.com", password: "password")
    @comment = Comment.create(user_id: @user.id, project_id: Project.first.id, comment: "test")
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "create" do
    assert_difference "Comment.count", 1 do
      post "/comments.json",
        params: { user_id: User.first.id, project_id: Project.first.id, comment: "Test" },
        headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
end
