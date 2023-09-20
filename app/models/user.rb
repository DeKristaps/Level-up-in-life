class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :skill, dependent: :destroy

  before_create :initialize_skill

  private

  def initialize_skill
    build_skill
  end
end
