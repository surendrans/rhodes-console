require 'rho/rhocontroller'
require 'helpers/browser_helper'

class ConsoleController < Rho::RhoController
  include BrowserHelper

  def index
    @consoles = Console.find(:all)
    render :back => '/app'
  end
  
  def get_output
    begin
    @output = eval(@params["query"])
      @class = "success_output"
    rescue Exception => e 
      @output = e     
        @class = "error_string"
    end
  end

end
