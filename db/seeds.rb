
User.first_or_create(email: 'ali123@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    role: User.roles[:admin])