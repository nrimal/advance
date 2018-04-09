class AnxietySurveyController < ApplicationController
  def show
  end

  def result

    @restlessness= params[:Question4] + params[:Question5]
    @worry = params[:Question2] + params[:Question3] + params[:Question7]
    @hypernormal = params[:Question1] + params[:Question6]
    #this is where the normal state of the applicant is above normal
    @total = params[:Question1] + params[:Question2] + params[:Question3] + params[:Question4] + params[:Question5] + params[:Question6] + params[:Question7]

    @restlessness = @restlessness.reduce(0) {|sum, element|
      sum += element.to_i
    }
    @worry = @worry.reduce(0) {|sum, element|
    sum += element.to_i
    }
    @hypernormal = @hypernormal.reduce(0) {|sum, element|
      sum += element.to_i
    }
    @total = @total.reduce(0) {|sum, element|
      sum += element.to_i
    }
    @severity = (params[:Question8])[0].to_i


  end





end
