class HashtagsController < ApplicationController
  before_action :set_question
  before_action :set_hashtag

  def index
    @hashtags = Hashtag.all
  end

  def show
    @hashtag
  end

  def create
    
  end

  private

  def set_hashtag
    binding.pry
    @hashtag = @question.hashtags.find(params[:id])
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

  def hashtag_params
    params.require(:hashtag).permit(:tag_name)
  end
end
