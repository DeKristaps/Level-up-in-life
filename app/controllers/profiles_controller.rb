class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find_by(id: current_user.id)
    @skill = @user.skill
    @stats = get_skills
  end

  private

  def get_skills
    @skill.attributes.slice('strength', 'dexterity', 'constitution', 'intelligence', 'wisdom', 'charisma')
  end
end
