require 'faker'

User.create(email: "admin@email.com",
            encrypted_password: "$2a$10$8IJ8lAADmoL0yU6no0BaJOH2P2hSkmcS4",
            sign_in_count: 1,
            created_at: "2015-10-05 15:14:54.746525",
            updated_at: "2015-10-05 16:15:54.751009",
            username: "admin",
            role: "admin")
User.create(email: "member@email.com",
            encrypted_password: "$2a$10$8IJ8lAADmoL0yU6no0BaJOH2P2hSkmS4s",
            sign_in_count: 1,
            created_at: "2015-10-05 15:16:54.746525",
            updated_at: "2015-10-05 16:15:56.751509",
            username: "member",
            role: "member")
