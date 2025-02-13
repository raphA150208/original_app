class AnswersController < ApplicationController
  before_action :set_question, only: [:new, :create, :edit, :update]
  def new
    @answers = @question.answers
    @answer = @question.answers.build
    @answer_words = @answer.answer_words.build
  end

  def create
    @answer = @question.answers.build(answer_params)
    @answer.user_id = current_user.id
    respond_to do |format|
      if @answer.save
        @answer = @question.answers.build
        format.js { render :index }
      else
        format.html { redirect_to new_question_answer_path(@question), notice: '回答できませんでした...' }
      end
    end
  end

  def edit
    @answer = @question.answers.find(params[:id])
    @answer_words = @answer.answer_words
    respond_to do |format|
      flash.now[:notice] = 'コメントの編集中'
      format.js { render :edit }
    end
  end
  def update
    @answer = @question.answers.find(params[:id])
      respond_to do |format|
        if @answer.update(answer_params)
          flash.now[:notice] = 'コメントが編集されました'
          format.js { render :index }
        else
          flash.now[:notice] = 'コメントの編集に失敗しました'
          format.js { render :edit_error }
        end
      end
  end
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    respond_to do |format|
      flash.now[:notice] = 'コメントが削除されました'
      format.js { render :index }
    end
  end
  private
  def set_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:answer).permit(:question_id, :comment, answer_words_attributes: [:id, :candidate, :_destroy])
  end
end