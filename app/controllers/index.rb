get '/' do
	@anagrams = []
  # Look in app/views/index.erb
  erb :index
end

post '/' do
	@anagrams = []
  @word = params[:user_input]
  Word.find_anagrams(@word).each{|word| @anagrams << word.word unless word.word == @word }
  @anagrams << "There are none :(" if @anagrams.size == 0
  erb :index
end
