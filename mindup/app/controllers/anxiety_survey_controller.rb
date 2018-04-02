class AnxietySurveyController < ApplicationController
  def show
  end

  def result
    @restlessness= [params[:Question4], params[:Question5]]
    @worry = [params[:Question2], params[:Question3], params[:Question7]]
    @hypernormal = [params[:Question1] , params[:Question6] ]
    #this is where the normal state of the applicant is above normal
    @total = [ params[:Question1] , params[:Question2] , params[:Question3] , params[:Question4] , params[:Question5] , params[:Question6] , params[:Question7]]
    @severity
    @restlessness = @restlessness.reduce(0) {|sum, element|
      if not element.nil?
        element = element.pop
        sum += element.to_i
      end
    }
    @worry = @worry.reduce(0) {|sum, element|
        if not element.nil?
          element = element.pop
          sum += element.to_i
        end
    }
    @hypernormal = @hypernormal.reduce(0) {|sum, element|
        if not element.nil?
          element = element.pop
          sum += element.to_i
        end
    }
    @total = @total.reduce(0) {|sum, element|
        if not element.nil?
          element = element.pop
          sum += element.to_i
        end
    }
    if not (params[:Question8].nil?)
      @severity = (params[:Question8])[0].to_i
    end

  end





end
