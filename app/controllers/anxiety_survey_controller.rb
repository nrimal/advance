class AnxietySurveyController < ApplicationController
  def show
  end

# object - has a catagory property. Catagory has a weight property. Catagory has a id.
# Catagory has options(onject). Options - array of weights. Option
#catagory:{
#  catagoryid:4,
#  weight:1
#}
#options:[ {weight: 2},{weight: 3},{weight: 4} ... ]
class Question
  def initialize(id,text,catagories,weights)
    #question id
    @id = id
    #the question itself
    @text = text
    #an array of catagories, 1for1 and ordered the same as weights
    @catagories = catagories
    #an array of weights, 1for1 and ordered the same as catagories
    @weights = weights
  end

  #set function for id
  def set_id (id)
    @id = id
  end
  #set function for text
  def set_text (text)
    text
  end
  #set function for catagories
  def set_catagories (catagories)
    catagories
  end
  #set function for weights
  def set_weights (weights)
    weights
  end

  #get function for id
  def get_id
    @id
  end
  #get function for text
  def get_text
    @text
  end
  #get function for catagories
  def get_catagories
    @catagories
  end
  #get function for weights
  def get_weights
    @weights
  end
end

class Options
  def initialize(question_id,texts,weights)
    #The integer associated with the question.
    #Should be the same as the question's id.
    @question_id = question_id
    #An array of texts that is the different 'answers' to the question asked
    @texts = texts
    #An array of weights that corrospond to the texts, 1 for 1 with texts
    @weights = weights
  end
  #Set function for question_id
  def set_question_id (question_id)
    @question_id = question_id
  end
  #set function for texts
  def set_texts (texts)
    @texts = texts
  end
  #set function for weights
  def set_weights (weights)
    @weights = weights
  end
  #get function for question_id
  def get_question_id
    @question_id
  end
  #get function for texts
  def get_texts
    @texts
  end
  #get function for weights
  def get_weights
    @weights
  end
end

class Suggestion
  def initialize(catagory, id, link)
    @catagory = catagory
    @id = id
    @link = link
  end
  #set function for catagory
  def set_catagory (catagory)
    @catagory = catagory
  end
  #set function for id
  def set_id
    @id = id
  end
  #set function for link
  def set_link (link)
    @link = link
  end
  #get function for catagory
  def get_catagory
    @catagory
  end
  #get function for id
  def get_id
    @id
  end
  #get function for link
  def get_link
    @link
  end
end


  def result
#Ask the options object which catagory it is identified with.

#Once in the specific catagory, iterate over the options, asking for the weights

#assign the weights to the catagory varible, doing calculations based on weight
# of catagory / questions /

#Do this ^ for all of the options (which should be the entire list of ?'s')

#Normalize the catagories into a 1 - 10 scale

#have a check for any catagory above a certain threshold to short circuit the
# code and have a SOS thing displayed

#distribute suggestions based on each catagory.

#return a suggestion object with links






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
