# U2.W5: Virus Predictor

# I worked on this challenge [with: Parjam Davoody].

# EXPLANATION OF require_relative
# The program is telling us how many people will lose with this outbreak and fast is going to spread in the state.
# Require relative is linking the program to data sheet.
# States hash are not changable but their data hash is changable. 

require_relative 'state_data'

class VirusPredictor # creating a class

  def initialize(state_of_origin, population_density, population, region, regional_spread) #setting class variables to equal arguments.
    @state = state_of_origin
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects  #HINT: What is the SCOPE of instance variables? its a method that takes another method and gives them arguments as its class variables.
    predicted_deaths
    speed_of_spread
  end

  #call attr reader to make population accessible
  attr_reader :population

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method # private makes the variables not accessible outside this scope
    # If moved private above, it would also make it private and not accessible from outside. 

  def predicted_deaths # this is going to print out the deaths for each state on the outbreak which is going to be based on population and population density
    death_percent = 0.1 if @population_density >= 50
    death_percent = 0.2 if @population_density >= 100
    death_percent = 0.3 if @population_density >= 150
    death_percent = 0.4 if @population_density >= 200
    death_percent = 0.05 if @population_density < 50
    number_of_deaths = (@population * death_percent).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months - it prints the virus spread based on population density.
    #speed = 0.0 removed, unneccessary.

    speed = 2.0 if @population_density >= 50
    speed = 1.5 if @population_density >= 100
    speed = 1.0 if @population_density >= 150
    speed = 0.5 if @population_density >= 200
    speed = 2.5 if @population_density < 50

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, information|
  VirusPredictor.new(state, information[:population_density], information[:population], information[:region], information[:regional_spread]).virus_effects
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

p alabama.population
p jersey.population
p california.population
p alaska.population