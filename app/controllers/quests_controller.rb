class QuestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @quests = Quest.page(params[:page]).per(6)
  end
end
