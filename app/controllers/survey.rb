require 'byebug'

get '/survey/new' do
  @survey = Survey.create(user_id: 1)
  erb :survey_new
end

post '/survey/:id' do
  @question = Question.create(text: params[:question], survey_id: params[:id])
  params[:answer].each do |choice|
    @question.choices << Choice.create(text: choice)
  end
end