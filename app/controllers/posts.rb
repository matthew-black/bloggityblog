  #--Display all of the posts--#
get '/posts' do
  erb :"/posts/index"
end

#   #--Render form for making a new post--#
# get '/posts/new' do
#   authenticate!
#   erb :"/posts/new"
# end

#   #--Create a new post--#
# post '/posts' do
#   @post = post.new(params[:post])
#   authenticate!

#   if @post.valid?
#     current_user.posts << @posts
#     redirect "/posts/#{@post.id}"
#   else
#     @errors = @posts.errors.full_messages
#     erb :"/posts/new"
#   end
# end

  #--Display an individual post--#
get '/posts/:id' do
  @post = find_and_ensure(params[:id])
  erb :"/posts/show"
end

#   #--Render a form to edit a post--#
# get '/posts/:id/edit' do
#   @post = find_and_ensure(params[:id])
#   authenticate!
#   authorize!(@post.owner)
#   erb :"/posts/edit"
# end

#   #--Update a post--#
# put '/posts/:id' do
#   @post = find_and_ensure(params[:id])
#   authenticate!
#   authorize!(@post.owner)
#   @post.assign_attributes(params[:post])

#   if @post.save
#     redirect "/posts/#{params[:id]}"
#   else
#     @errors = @post.errors.full_messages
#     erb :'posts/edit'
#   end
# end

#   #--Delete a post--#
# delete '/posts/:id' do
#   @post = find_and_ensure(params[:id])
#   authenticate!
#   authorize!(@post.owner)
#   @post.destroy
#   redirect '/posts'
# end
