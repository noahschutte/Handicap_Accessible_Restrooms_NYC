class Controller
  def initialize
    @view = View.new
  end

  def run
    @view.welcome
    @view.options
    input = gets.strip
    until input == 'EXIT' || input == 'QUIT'
      case
      when input == 'Manhattan' || input == 'Brooklyn' || input == 'Queens' || input == 'Staten Island' || input == 'Bronx'
        @view.display_parks(PublicParkToilet.get_borough(input))
        @view.park_list_headers(input)
        name = gets.strip
        @view.display_accessible(PublicParkToilet.get_accessible(name))
      else
        @view.display_invalid_input
      end
      @view.options
      input = gets.strip
    end
  end
end
