
#Default Admin user with admin role
User.first_or_create(email: 'ali123@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    first_name: 'Ali',
    last_name: 'Kukusilina',
    screen_name: 'Aligoogles',
    age: '30',
    phone_number: '7894561237',
    country: 'Ireland',
    profession: 'Web Developer',
    interest: 'Blockchain',
    role: User.roles[:admin])

#Default users with user role
User.create(email: 'second@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    first_name: 'Michelle',
    last_name: 'Burke',
    screen_name: 'Michelee',
    age: '35',
    phone_number: '1234567891',
    country: 'England',
    profession: 'Manager',
    interest: 'Crypto',
    role: User.roles[:user])

User.create(email: 'third@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    first_name: 'Natasha',
    last_name: 'Cullen',
    screen_name: 'Tashee',
    age: '32',
    phone_number: '1234557811',
    country: 'England',
    profession: 'IT Manager',
    interest: 'Crypto',
    role: User.roles[:user])

2.times do |x|
    post = Post.create(comment: " #{x} Add your post here", user_id: User.first.id)

    1.times do |y| Reply.create(content: "Your reply here #{y}", user_id: User.third.id, post_id: post.id)
    end
end

1.times do |x|
    post = Post.create(comment: " #{x} Add your post here", user_id: User.second.id)

    1.times do |y| Reply.create(content: "Your reply here #{y}", user_id: User.third.id, post_id: post.id)
    end
end

2.times do |x|
    post = Post.create(comment: " #{x} Add your post here", user_id: User.third.id)

    1.times do |y| Reply.create(content: "Your reply here #{y}", user_id: User.first.id, post_id: post.id)
    end
end