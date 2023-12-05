class TeamsController < ApplicationController
  def show
    @team = current_user.team
    # @players = Player.where(health: "Available")
    @players = Player.where(health: "Injured").or Player.where(health: "Limited")
    # @players = @players.slice(0, 4)
    @events = Event.where(event_type: "Match")
    @notifications = Notification.order(created_at: :desc)
  end

  def staff
    @team = current_user.team
    @players = Player.all
    @employees = Employee.all
  end

  def chatrooms
    @team = current_user.team
    @chatrooms = Chatroom.all
  end

  def management
    @team = current_user.team
  end
end
