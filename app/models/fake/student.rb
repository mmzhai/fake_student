module Fake
  class Student < ActiveRecord::Base
    GENDER = [ 'female', 'male', 'missing' ]
    YEAR   = [ 'freshman', 'sophomore', 'junior', 'senior' ]
    RACE   = [ 'asian',
               'african american',
               'caucasian',
               'latino',
               'multiracial',
               'native american',
               'pacific islander',
               'other',
               'missing'
             ]
    SCHOOL = [ 'University of California, Berkeley',
               'Stanford',
               'University of Southern California',
               'San Francisco State University',
               'University of San Francisco'
             ]
  end
end
