class SurveyController < ApplicationController

  def show
  end

  def suggestion
    @suggestions = [""]

  end

  def result

    @sucidalDepress= [params[:Question2], params[:Question6], params[:Question9]]
    @foodSeverity = [params[:Question5]]
    @general = [params[:Question1], params[:Question3], params[:Question4] , params[:Question7] , params[:Question8]]
    @severity

    @general = @general.reduce(0) {|sum, element|
      if not element.nil?
        element = element.pop
        sum += element.to_i
      end
    }
    @foodSeverity = @foodSeverity.reduce(0) {|sum, element|
      if not element.nil?
        element = element.pop
        sum += element.to_i
      end
    }
    @sucidalDepress = @sucidalDepress.reduce(0) {|sum, element|
      if not element.nil?
        element = element.pop
        sum += element.to_i
      end
    }
    if not (params[:Question10].nil?)
      @severity = (params[:Question8])[0].to_i
    end
  end



end
