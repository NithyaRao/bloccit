require 'rails_helper'
 
 describe User do
 
   include TestFactories

   before do
      @post = associated_post
      @user = authenticated_user
      @post_1 = associated_post  
    end
 
   describe "#favorited(post)" do
    
     it "returns `nil` if the user has not favorited the post" do
       expect( @user.favorites.find_by_post_id(@post.id) ).to be_nil    
     end
 
     it "returns the appropriate favorite if it exists" do
        @favorite = @user.favorites.create(post: @post)
         expect( @user.favorites.find_by_post_id(@post.id) ).to eq(@favorite)
     end
     it "returns `nil` if the user has favorited another post" do
        @favorite = @user.favorites.create(post: @post_1)
        expect( @user.favorites.find_by_post_id(@post.id) ).to be_nil  
     end
   end
 end