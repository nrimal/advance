class SurveyController < ApplicationController
  
  
  
  def suggestion
    @suggestions = [""]

  end

  def result
    
    @sucidalDepress= params[:Question2] + params[:Question6] + params[:Question9]
    @foodSeverity = params[:Question5] 
    @general = params[:Question1] + params[:Question3] + params[:Question4] + params[:Question7] + params[:Question8]

    @general = @general.reduce(0) {|sum, element|
      sum += element.to_i
    }
    @foodSeverity = @foodSeverity.reduce(0) {|sum, element|
    sum += element.to_i
    }
    @sucidalDepress = @sucidalDepress.reduce(0) {|sum, element|
      sum += element.to_i
    }
    @severity = (params[:Question10])[0].to_i
  end



end
