class HashtagsController < ApplicationController
  before_action :set_hashtag

  def show
    @questions = Question.where_exists(:hashtags, id: params[:id])
  end

  private

  def set_hashtag
    @hashtag = Hashtag.find(params[:id])
  end
end
