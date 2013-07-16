get '/' do
  erb :index
end

post '/anagram' do
  @anagrams = Word.anagrams(params[:user_input])
  erb :index
end