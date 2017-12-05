class SurveyController < ApplicationController
  def show
  end

  def result

    @totalPoints = params[:Question1] + params[:Question2] + params[:Question3] + params[:Question4] + params[:Question5] + params[:Question6]
    @totalPoints = @totalPoints + params[:Question7] + params[:Question8] + params[:Question9] + params[:Question10]
    @totalPoints = @totalPoints.reduce(0) {|sum, element|
      sum += element.to_i
    }

  end
end
