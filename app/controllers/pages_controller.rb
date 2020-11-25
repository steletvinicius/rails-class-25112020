class PagesController < ApplicationController

  def contact
  end

  def about
  end

  def home
    @futebol_teams = ['vasco da gama', 'flamengo', 'fluminense']
    @user_input = params[:futebol_team]
    if @user_input
      @futebol_teams = @futebol_teams.select { |name| name == @user_input.downcase }
    end
  end

end
