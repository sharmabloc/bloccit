require 'rails_helper'
include Warden::Test::Helpers 
Warden.test_mode!

describe Topic do 

before do 
    @user = create(:user)
   # post = create(:post, user: @user)
   # create(:comment, user: @user, post: post)
    login_as(@user, :scope => :user)

    @user2 = create(:user)
 #   post = create(:post, user: @user2)
 #   2.times { create(:comment, user: @user2, post: post)}

    @public_topic = Topic.create(public: true) # default is public_topic
    @private_topic = Topic.create(public: false)
  end

  describe "publicly_viewable" do
    it "returns a relation of all public topics" do
      expect(Topic.publicly_viewable(nil)).to eq([@public_topic])
    end
  end

  describe "privately_viewable" do
    it "returns a relation of all private topics" do
      expect(Topic.privately_viewable.first).to eq(@private_topic)
    end
  end

  describe "visible_to(user)" do
    it "returns all topics if the user is present" do
      user = true # sneaky solutin; we don't need a real user, just something truthy
      # Your code here
      expect(Topic.visible_to(@user)).to match_array([@public_topic, @private_topic])
    end

    it "returns only public topics if user is nil" do 
      # your code here
      expect(Topic.visible_to(nil)).to eq([@public_topic])

    end
  end
end