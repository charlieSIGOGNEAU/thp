require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date,duration,title,attendees)
    @start_date=Time.parse(start_date)
    @duration=duration.to_i
    @title=title
    @attendees=attendees
  end

  def postpone_24h
    @start_date+=60*60*24
  end

  def end_date 
    return @start_date+@duration*60
  end

  def is_past?
    return @start_date>Event.new
  end

  def is_future?
    return @start_date<Event.new
  end

  def is_soon?
    if is_past
      return "il est déjà passé"
    elsif @start_date-Event.new<60*30
      return "dans moins de 30minutes"
    else
      return "dans plus de 30 minutes"
    end
  end

  def to_s
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date.strftime("%H:%M:%S %d/%m/%Y")}"
    puts ">Durée : #{@duration} minutes"
    puts "Invités : #{@attendees.join(", ")}"
  end


end