Rails.application.routes.draw do
  use_doorkeeper
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  use_doorkeeper do
    # No need to register client application
    skip_controllers :applications, :authorized_applications
  end

  # use namespace for routing would cause invalid params sanitizer caused by invalid resource_name.
  # resource_name = api_v1_user # namespace
  # resource_name = user # scope

  # namespace :api, defaults: { format: :json } do
  #   namespace :v1 do
  #     devise_for :users, controllers: {
  #       registrations: 'api/v1/users/registrations'
  #     }, skip: [:sessions, :password]
  #   end
  # end

  scope module: :api, defaults: { format: :json }, path: 'api' do
    scope module: :v1, path: 'v1' do
      devise_for :users, controllers: {
           registrations: 'api/v1/users/registrations',
       }, skip: [:sessions, :password]
    end
  end

  # scope module: :api, defaults: { format: :json }, path: 'api' do
  #   scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
  #     devise_for :users, controllers: {
  #          registrations: 'api/v1/users/registrations',
  #      }, skip: [:sessions, :password]
  #   end
  # end
end
