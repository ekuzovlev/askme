class QuestionsController < ApplicationController
  HASHTAG_REGEXP = /#[[:word:]-]+/.freeze

  before_action :load_question, only: [:edit, :update, :destroy]
  before_action :authorize_user, except: [:create]

  def edit; end

  def create
    @question = Question.new(question_params)
    @question.author = current_user

    if @question.save
      all_hashtags(@question.text).each do |hashtag|
        hashtag&.downcase!
        @hashtag = Hashtag.find_by(tag_name: hashtag)
        @hashtag.present? ? @hashtag : @hashtag = Hashtag.create(tag_name: hashtag)

        HashtagQuestion.create(hashtag_id: @hashtag.id, question_id: @question.id)
      end
      redirect_to user_path(@question.user), notice: 'Вопрос задан'
    else
      render :edit
    end
  end

  def update
    if @question.update(question_params)
      all_hashtags(@question.answer).each do |hashtag|
        hashtag&.downcase!
        @hashtag = Hashtag.find_by(tag_name: hashtag)
        @hashtag.present? ? @hashtag : @hashtag = Hashtag.create(tag_name: hashtag)

        HashtagQuestion.create(hashtag_id: @hashtag.id, question_id: @question.id)
      end
      redirect_to user_path(@question.user), notice: 'Вопрос сохранен'
    else
      render :edit
    end
  end

  def destroy
    user = @question.user

    @question.destroy

    redirect_to user_path(user), notice: 'Вопрос удален :('
  end

  private

  def authorize_user
    reject_user unless @question.user == current_user
  end

  def load_question
    @question = Question.find(params[:id])
  end

  def question_params
    if current_user.present? &&
      params[:question][:user_id].to_i == current_user.id
      params.require(:question).permit(:user_id, :text, :answer)
    else
      params.require(:question).permit(:user_id, :text)
    end
  end

  def all_hashtags(string)
    string.scan(HASHTAG_REGEXP)
  end
end
