
roles = [
  {
    name: "Manager",
    permissions: {
      manager: true,
      admin: false,
    }
  },
  {
    name: "Admin",
    permissions: {
      admin: true,
      manager: false,
    }
  }
]

puts 'Cleaning database...'
User.destroy_all
Contact.destroy_all
puts 'Creating first 4 users...'
users_attributes = [
  {
    email: "fred.admin@admin.com",
    first_name: "fred",
    last_name: "admin",
    password: "123456",
    password_confirmation: "123456",
    role: "Admin",
    manager: false,
    admin: true
  },
  {
    email: "david.manager@manager.com",
    first_name: "david",
    last_name: "smith",
    password: "123456",
    password_confirmation: "123456",
    role: "Manager",
    manager: true,
    admin: false
  },
  {
    email: "jack.manager@manager.com",
    first_name: "jack",
    last_name: "dean",
    password: "123456",
    password_confirmation: "123456",
    role: "Manager",
    manager: true,
    admin: false
  },
  {
    email: "lucy.manager@gmail.com",
    first_name: "lucy",
    last_name: "granger",
    password: "123456",
    password_confirmation: "123456",
    role: "Manager",
    manager: true,
    admin: false
  }
]

User.create!(users_attributes)
puts "First 4 Users created"
