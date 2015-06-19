require 'faker'
 
 # Create Posts only if it does not exist 
 title = "Black Hawks"
 body = "The Chicago Blackhawks are a professional ice hockey team based in Chicago, Illinois.They have won 3 Stanley cups in 6 years"  
 
 post = Post.find_by(title: title) 
 
 if post.nil?
  # doesn't exists in Database
   Post.create!(
     title:  "Black Hawks",
     body:   "Stanley Cup Winner"
   )
else
  # Exists in Database 
   puts "#{title} exists in Database" 
end

if Comment.find_by(post: post, body: body ).nil?
  # comment does not exists
   Comment.create!(
     post: post,
    body: body
   )
 else
   puts "#{title} and #{body} exists in Database"   
 end
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
