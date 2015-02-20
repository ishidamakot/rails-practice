class Questionnaire < ActiveRecord::Base
  def short_description
    description[0, 14] + '...'
  end
end
