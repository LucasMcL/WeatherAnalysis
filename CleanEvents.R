CleanEvents <- function(event){
  # References a list and combines identical variables of the event type category
  # that appear to be unique only because of alternate spellings.
  #
  # Args:
  #   x: A character or factor variable of length one.
  #
  # Returns:
  #   A correctly spelled event name from the NOAA documentation.
  #   Example: TSTM returns Thunderstorm Wind.  High Winds returns High Wind.
  
  if (event == "TSTM WIND" | event == "THUNDERSTORM WINDS"){"THUNDERSTORM WIND"}
  else if (event == "MARINE TSTM WIND"){"MARINE THUNDERSTORM WIND"}
  else if (event == "URBAN/SML STREAM FLD"){"FLOOD"}
  else if (event == "HIGH WINDS"){"HIGH WIND"}
  else if (event == "WILD/FOREST FIRE"){"WILFIRE"}
  else if (event == "WINTER WEATHER/MIX"){"WINTER WEATHER"}
  else if (event == "TSTM WIND/HAIL"){"THUNDERSTORM WIND"}
  else{ event }    
  events.to.change <- c("TSTM WIND", "THUNDERSTORM WINDS", "MARINE TSTM WIND",
                        "URBAN/SML STREAM FLD", "HIGH WINDS", "WILD/FOREST FIRE",
                        "WINTER WEATHER/MIX", "TSTM WIND/HAIL")
}