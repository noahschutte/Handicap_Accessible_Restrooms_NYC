require 'colorize'

class View
  def welcome
    puts "\nWhat borough do you want?".blue
  end
  def options
    puts "\nEnter\n 'Manhattan'\n 'Brooklyn'\n 'Bronx'\n 'Queens'\n 'Staten Island'".blue
  end
  def display_invalid_input
    puts "\nInput not recognized.".red
  end
  def park_list_headers(borough)
    puts "\nAbove are the parks in #{borough}\n ".blue
    puts "Are you curious which of these public park toilets are handicap accessible?\nPlease enter the park's full name to find out.".blue
  end
  def display_parks(unique_parks_table)
    unique_parks_table.each do |park|
      puts park[:name]
    end
  end
  def display_accessible(response)
    if response
      puts "\nYes that park has a handicap accessible toilet!\n".green
    else
      puts "\nNo sorry that park does not have a handicap accessible toilet.\n".red
    end
  end
end
