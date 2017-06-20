class HomeController < ApplicationController

  # Go to:
  # - the currently live event guidelines page, or
  # - /events if no current event
  def show
    live_events = Event.live.where(:domain => request.host).all

    if live_events.count == 1
      redirect_to event_url(live_events.first)
    else
      redirect_to events_url
    end
  end

end
