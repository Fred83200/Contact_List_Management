
roles = [
  {
    name: "Bar Manager",
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
  },
  {
    name: "Floor Manager"
    permissions: {
      admin: false,
      manager: true,
    }
  },
  {
    name: "Chef Cuisine"
    permissions: {
      admin: false
      manager: true
    }
  },
  {
    name: "Sommelier Manager"
    permissions: {
      admin: false
      manager: true
    }
  },
  {
    name: "Receptionnist Manager"
    permissions: {
      admin: false
      manager: true
    }
  },
  {
    name: "Security Manager"
    permissions: {
      admin: false
      manager: true
    }
  }
]

puts 'Cleaning database...'
User.destroy_all
Contact.destroy_all
puts 'Creating first 7 users...'
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
    role: "Sommelier Manager",
    manager: true,
    admin: false
  },
  {
    email: "jack.manager@manager.com",
    first_name: "jack",
    last_name: "dean",
    password: "123456",
    password_confirmation: "123456",
    role: "Chef Cuisine",
    manager: true,
    admin: false
  },
  {
    email: "lucy.manager@gmail.com",
    first_name: "lucy",
    last_name: "granger",
    password: "123456",
    password_confirmation: "123456",
    role: "Receptionnist Manager",
    manager: true,
    admin: false
  },
  {
    email: "bastien.manager@gmail.com",
    first_name: "bastien",
    last_name: "renet"
    password: "123456",
    password_confirmation: "123456",
    role: "Bar Manager",
    manager: true,
    admin: false
  },
  {
    email: "sophie.manager@gmail.com",
    first_name: "sophie",
    last_name: "jude"
    password: "123456",
    password_confirmation: "123456",
    role: "Floor Manager",
    manager: true,
    admin: false
  },
  {
    email: "piotr.manager@gmail.com",
    first_name: "piotr",
    last_name: "puznic"
    password: "123456",
    password_confirmation: "123456",
    role: "Security Manager",
    manager: true,
    admin: false
  }
]

User.create!(users_attributes)
puts "First 7 Users created"
