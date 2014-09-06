require 'rails_helper'

describe Topic do 
  include TestFactories

  before do 
    @user = authenticated_user
    @public_topic = Topic.create # default is public_topic
    @private_topic = Topic.create(public: false)
    @topic_array = [@public_topic, @private_topic]
  end

  describe "publicly_viewable" do
    it "returns a relation of all public topics" do
      expect(Topic.publicly_viewable(nil)).to eq([@public_topic])
    end
  end

  describe "privately_viewable" do
    it "returns a relation of all private topics" do
      expect(Topic.privately_viewable).to eq(@private_topic)
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