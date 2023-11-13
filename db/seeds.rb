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
quests << Quest.new(title: 'Do the dishes', description: 'You have to wash all the dishes in the sink', xp_for_stat: 'constitution', xp_given: 15)
quests << Quest.new(title: 'Worckout', description: 'Just lift something hevy for about 20 min', xp_for_stat: 'strength', xp_given: 15)

quests.each { |quest| 
  quest.save unless Quest.find_by(title: quest.title)
}
