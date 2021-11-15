
user = User.find_or_initialize_by(email: 'edo@desu.com')
user.password = 'password'
user.password_confirmation = 'password'

restaurant = user.restaurants.find_or_initialize_by(name:'mika', address:'samborondon')
restaurant2 = user.restaurants.find_or_initialize_by(name:'ramon', address:'la piazza')
restaurant3 = user.restaurants.find_or_initialize_by(name:'la guitarrita', address:'niceto')

user.save


user2 = User.find_or_initialize_by(email: 'akari@desu.com')
user2.password = 'password'
user2.password_confirmation = 'password'

restaurant = user2.restaurants.find_or_initialize_by(name:'la francisca', address:'urdesa')

user2.save