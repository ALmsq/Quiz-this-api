class QuestionsController < ApplicationController
    def index
        @questions = Question.all
        render json: @questions
    end

    def show
        @question = Question.find(params[:id])
        render json: @question
    end

    def create
        @question = Question.create(question_params)
        render json: @question
    end

    # def random
    #     random_q_array = Question.all.shuffle
    #     if random_q_array.length >= 1
    #         render json: random_q_array.pop
    #     else
    #         render json: {questions: "sir"}
    #     end

        
    # end
    
    
    
    private

    def question_params
        params.permit(:name)
    end
end
