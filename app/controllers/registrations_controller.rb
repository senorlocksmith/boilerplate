# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
    private
  
    # Redirect the user to this page after they sign up.
    def after_sign_up_path_for(resource)
      root_path
    end
  
    # If you want to run any code on user registration, add it here.
    # The newly created user is available as `resource`, and if I remember
    # correctly, you can access form data via `params["user"]["fieldname"].`
    def sign_up(resource_name, resource)
      # Create an account for this user.
      account = Account.create(name: "#{resource.email}'s account")
  
      # Sign in the user (from the original Devise::RegistrationsController).
      sign_in(resource_name, resource)
    end
  end