# U2.W5: Virus Predictor

# I worked on this challenge by myself

# EXPLANATION OF require_relative
# require_relative is used to load data from separate file
# state_data is a hash that has state names as keys and hash as their value. Inside it, symbols are used as the keys. 

require_relative 'state_data'

class VirusPredictor
  # this initializes the instance variables for each one of the parameter
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # instance variables can be used in any methods inside the class.
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  # If it were cut and pasted above the virus_effects method, it will give an error because we would not be able
           # to call private method from outside the class. 

  # this predicted_deaths method use state's pupulation data to predict the number of deaths that could occur
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # this speed_of_spread method use state's pupulation density to predict how fast the virus can spread in months.

  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# REFACTORED Solution
require_relative 'state_data'

class VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects  
    effects
  end

  private  

  def effects
    speed = 0.0
    case @population_density
      when 0..49
        number_of_deaths = (@population * 0.05).floor
        speed += 2.5
      when 50..99
        number_of_deaths = (@population * 0.1).floor
        speed += 2
      when 100..149
        number_of_deaths = (@population * 0.2).floor
        speed += 1.5
      when 150..199
        number_of_deaths = (@population * 0.3).floor
        speed += 1.0
      else
        number_of_deaths = (@population * 0.4).floor
        speed += 0.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months."
  end

end


# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

all  = STATE_DATA.each {|state, data| VirusPredictor.new(state, data[:population_density],data[:population]) }
all.each {|state| puts state.virus_effects}








