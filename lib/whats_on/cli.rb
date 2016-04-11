

class WhatsOn::CLI
  attr_accessor :shows, :name

  def call
    @shows=WhatsOn::Show.all
    puts "What's on tv tonight? Find a show to watch!"
    puts ''
    puts "Maybe this one?\nFeatured Show:"
    list_suggestion
    puts ''
    menu
    goodbye
  end

  def list_shows
    @shows.each.with_index(1) do |show, i|
      puts "#{i}. #{show[:name]} - #{show[:airing]}"

    end
    puts ''
    puts "Enter the show number for more details"
  end

  def list_suggestion
    dice = rand(0..4)
    puts "#{@shows[dice][:name]} - #{@shows[dice][:airing]} \n#{@shows[dice][:description]}\n"
    puts ''
  end

  def goodbye
    puts "Happy viewing! Goodbye!"
  end

  def prompt
    puts "Enter LIST to list all shows, SUGGEST to suggest a featured show or type EXIT"
  end


  def menu
    puts "What would you like to do next?"
    prompt
    input = nil
    until input == "exit"
      input = gets.strip.downcase
      if input.to_i > 0
        puts "#{@shows[input.to_i-1][:name]} - #{@shows[input.to_i-1][:airing]} \n#{@shows[input.to_i-1][:description]}"
        puts ""
        prompt
      elsif input == "list"
        list_shows
      elsif input == "suggest"
        list_suggestion
      elsif input == "exit"
      else
          puts "Hmm.  Please check entry and try again."
      end
    end
  end
end