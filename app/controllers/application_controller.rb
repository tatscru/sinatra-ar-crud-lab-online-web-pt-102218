class ApplicationController < Sinatra::Base
  
  get '/' do 
  end 
  
  get '/articles' do
    @articles = Article.all
    erb :index
  end

   get '/articles/new' do
    @article = Article.new
    erb :new
  end 

  post '/articles' do
    Article.create(params[:title], content: params[:content])
    
  end

  # end

  # get '/articles/:id/edit' do
  #   @article = Article.find(params[:id])
  #   erb :form
  # end

  # get '/posts/:id' do
  #   @article = Article.find(params[:id])
  #   erb :show
  # end

 
#   delete '/posts/:id/delete' do
#     @post = Post.find(params[:id])
#     @post.destroy
#     erb :delete
#   end

#   patch '/posts/:id' do
#     post = Post.find(params[:id])
#     post.update(params[:post])
#     redirect "/posts/#{post.id}"
#   end
end