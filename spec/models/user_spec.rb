require 'rails_helper'

describe User do 
#  include TestFactories

before do 
    @user1 = create(:user)
    post = create(:post, user: @user1)
    create(:comment, user: @user1, post: post)

    @user2 = create(:user)
    post = create(:post, user: @user2)
    2.times { create(:comment, user: @user2, post: post)}
  end



  describe "#favorited(post)" do

    #before do
     # @post = associated_post
     # @user = authenticated_user
    #end


    it "returns 'nil' if the user has not favorited the post" do
        @user1.favorites.where(post: @post).create 
    end

    it "returns the appropriate favorite if it exits" do
        @user2.favorites.where(post: @post).create 
    end
  end

describe ".top_rated" do 

  it "returns users ordered by comments + posts" do 
    expect( User.top_rated ). to eq([@user2, @user1])
  end

  it "stores a 'comments_count' on user" do 
    users = User.top_rated
    expect( users.first.comments_count ).to eq(2)
  end
end

end