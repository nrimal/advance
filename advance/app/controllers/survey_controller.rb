class SurveyController < ApplicationController
  def show
  end

  def result

    @totalPoints = params[:Question1] + params[:Question2]
    @totalPoints = @totalPoints.reduce(0) {|sum, element|
      sum += element.to_i
    }
    
  end
end
