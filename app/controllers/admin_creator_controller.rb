class AdminCreatorController < ApplicationController
  def make
    user = User.create!(
      email: "admin@example.com",
      password: "password123",
      password_confirmation: "password123",
      admin: true
    )

    render plain: "Admin created: #{user.email}"
  end
end
