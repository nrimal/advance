class AnxietySurveyController < ApplicationController
  def show
  end

  def result

#We will recieve a lot of objects
#for each options
  #Ask the options object what it's question_id is.

  #With the question_id, we can figure out the catagories associated with that question
  #With the options, we can figure out the user's coice for that question
  #We can add together all of the catagories that show up.
    #all their corresonding weights so that we can judge which are the most important ones
    #all the user's choices for those questions and which catagory they belong to
#we now have a big collection of catagories, with their weights from each question
#we now have a big collection of user's responses that tell us the weight that they
  #have with each catagory.
        # I believe this will end up being a number like - total weight
        # Total weight (for each question) will be:
          #the sum of all the  total_weight of each catagory
        # There should also be a total_weight for each: catagory weight X the weight of the user's answer

#So based on our total_weights for each catagory. we can do some calculations to more easily comapre:
  #Normalize the catagories' total_weight into a 1 - 10 scale

#have a check for any catagory above a certain threshold to short circuit the
# code and have a SOS thing displayed

#return a suggestion object with links based on the calculated data
#We will create a return object that will include the links (array) to be displayed to user


#old code
    @restlessness = [params[:Question4], params[:Question5]]
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
