class QuestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @quests = Quest.all
  end
end
