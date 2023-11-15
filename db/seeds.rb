users = []

user = User.new(email: 'dekristaps@gmail.com', nickname: 'LinuPuika')
user.password = 'admin123'
user.password_confirmation = 'admin123'
users << user

user2 = User.new(email: 'test@example.com', nickname: 'Testy Testerson')
user2.password = 'admin123'
user2.password_confirmation = 'admin123'
users << user2

users.each { | user | 
  user.save unless User.find_by(email: user.email)
}


quests = []
quests << Quest.new(title: 'Do the dishes', description: 'You have to wash all the dishes in the sink', xp_for_stat: 'dexterity', xp_given: 15)
quests << Quest.new(title: 'Workout', description: 'Just lift something hevy for about 20 min', xp_for_stat: 'strength', xp_given: 15)
quests << Quest.new(title: 'Go for a run', description: 'Go for a 20 min run', xp_for_stat: 'constitution', xp_given: 15)
quests << Quest.new(title: 'Read a book', description: 'Finish a chaper of a book', xp_for_stat: 'intelligence', xp_given: 15)
quests << Quest.new(title: 'Finish a book', description: 'Finish a entire book', xp_for_stat: 'intelligence', xp_given: 80)
quests << Quest.new(title: 'Talk to some people', description: 'Go out and talk to some people', xp_for_stat: 'charisma', xp_given: 15)
quests << Quest.new(title: 'Leg day', description: 'Do a leg workout', xp_for_stat: 'strength', xp_given: 15)
quests << Quest.new(title: 'Meditate', description: 'Do a 20 min meditation', xp_for_stat: 'wisdom', xp_given: 15)
quests << Quest.new(title: 'Learn guitar', description: 'Do some guitar exercises', xp_for_stat: 'dexterity', xp_given: 15)

quests.each { |quest| 
  quest.save unless Quest.find_by(title: quest.title)
}
