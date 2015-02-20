class QuestionnairesController < ApplicationController
  def index
    @questionnaires = Questionnaire.all
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  def new
    @questionnaire = Questionnaire.new
  end

  def create
    @questionnaire = Questionnaire.create(questionnaire_params)
    redirect_to @questionnaire
  end

  def edit
    @questionnaire = Questionnaire.find(params[:id])
  end

  def update
    @questionnaire = Questionnaire.find(params[:id])
    @questionnaire.update(questionnaire_params)
    redirect_to @questionnaire
  end

  def destroy
    @questionnaire = Questionnaire.find(params[:id])
    @questionnaire.destroy
    redirect_to @questionnaire
  end

  private

  def questionnaire_params
    params.require(:questionnaire).permit(:title, :description)
  end
end
