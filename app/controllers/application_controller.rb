require "application_responder"

class ApplicationController < ActionController::Base

  self.responder = ApplicationResponder
  respond_to :html, :js
  responders :flash

  protect_from_forgery with: :exception

  #def search
  #  @student_searched = params[:name,:register_number]
  #  @studens_finded = Student.where "name like ? OR register_number like ?", 
  #              "%#{@student_searched}%", "%#{@student_searched}%"
  #end


  
end
