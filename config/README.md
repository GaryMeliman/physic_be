Prefix Verb   URI Pattern                                    Controller#Action
rails_admin                       /admin                                         RailsAdmin::Engine
abavilities                  | POST   /abavilities(.:format)                         abavilities#create
abavility                    | PATCH  /abavilities/:id(.:format)                     abavilities#update
                             | PUT    /abavilities/:id(.:format)                     abavilities#update
pharmacy                     | GET    /pharmacy(.:format)                            profile#pharmacy
new_user_session             | GET    /users/sign_in(.:format)                       devise/sessions#new
user_session                 | POST   /users/sign_in(.:format)                       devise/sessions#create
destroy_user_session         | DELETE /users/sign_out(.:format)                      devise/sessions#destroy
user_password                | POST   /users/password(.:format)                      devise/passwords#create
new_user_password            | GET    /users/password/new(.:format)                  devise/passwords#new
edit_user_password           | GET    /users/password/edit(.:format)                 devise/passwords#edit
                             | PATCH  /users/password(.:format)                      devise/passwords#update
                             | PUT    /users/password(.:format)                      devise/passwords#update
cancel_user_registration     | GET    /users/cancel(.:format)                        devise/registrations#cancel
user_registration            | POST   /users(.:format)                               devise/registrations#create
new_user_registration        | GET    /users/sign_up(.:format)                       devise/registrations#new
edit_user_registration       | GET    /users/edit(.:format)                          devise/registrations#edit
                             | PATCH  /users(.:format)                               devise/registrations#update
                             | PUT    /users(.:format)                               devise/registrations#update
                             | DELETE /users(.:format)                               devise/registrations#destroy
new_pharmacy_session         | GET    /pharmacies/sign_in(.:format)                  devise/sessions#new
pharmacy_session             | POST   /pharmacies/sign_in(.:format)                  devise/sessions#create
destroy_pharmacy_session     | DELETE /pharmacies/sign_out(.:format)                 devise/sessions#destroy
pharmacy_password            | POST   /pharmacies/password(.:format)                 devise/passwords#create
new_pharmacy_password        | GET    /pharmacies/password/new(.:format)             devise/passwords#new
edit_pharmacy_password       | GET    /pharmacies/password/edit(.:format)            devise/passwords#edit
                             | PATCH  /pharmacies/password(.:format)                 devise/passwords#update
                             | PUT    /pharmacies/password(.:format)                 devise/passwords#update
cancel_pharmacy_registration | GET    /pharmacies/cancel(.:format)                   registrations#cancel
pharmacy_registration        | POST   /pharmacies(.:format)                          registrations#create
new_pharmacy_registration    | GET    /pharmacies/sign_up(.:format)                  registrations#new
edit_pharmacy_registration   | GET    /pharmacies/edit(.:format)                     registrations#edit
                             | PATCH  /pharmacies(.:format)                          registrations#update
                             | PUT    /pharmacies(.:format)                          registrations#update
                             | DELETE /pharmacies(.:format)                          registrations#destroy
  root                       | GET    /                                              home#index
home_index                   | GET    /home/index(.:format)                          home#index
search                       | GET    /search/:id(.:format)                          home#search
type_ahead                   | GET    /type_ahead/:q(.:format)                       home#type_ahead
create_petition              | GET    /petitions/:medicine_id/:pharmacy_id(.:format) petitions#create
update_petition              | GET    /petitions/:id(.:format)                       petitions#update
near_pharmacies              | GET    /near(.:format)                                home#near
show_map                     | GET    /show_map/:id(.:format)                        home#show_map
api_v1_user                  | GET    /api/v1/user(.:format)                         api/v1/profile#user
new_api_v1_user_session      | GET    /api/v1/auth/sign_in(.:format)                 devise_token_auth/sessions#new
api_v1_user_session          | POST   /api/v1/auth/sign_in(.:format)                 devise_token_auth/sessions#create
destroy_api_v1_user_session  | DELETE /api/v1/auth/sign_out(.:format)                devise_token_auth/sessions#destroy
api_v1_user_password         | POST   /api/v1/auth/password(.:format)                devise_token_auth/passwords#create
new_api_v1_user_password     | GET    /api/v1/auth/password/new(.:format)            devise_token_auth/passwords#new
edit_api_v1_user_password    | GET    /api/v1/auth/password/edit(.:format)           devise_token_auth/passwords#edit
                             | PATCH  /api/v1/auth/password(.:format)                devise_token_auth/passwords#update
                             | PUT    /api/v1/auth/password(.:format)                devise_token_auth/passwords#update
cancel_api_v1_user_registration | GET    /api/v1/auth/cancel(.:format)                  devise_token_auth/registrations#cancel
api_v1_user_registration     | POST   /api/v1/auth(.:format)                         devise_token_auth/registrations#create
new_api_v1_user_registration | GET    /api/v1/auth/sign_up(.:format)                 devise_token_auth/registrations#new
edit_api_v1_user_registration| GET    /api/v1/auth/edit(.:format)                    devise_token_auth/registrations#edit
                             | PATCH  /api/v1/auth(.:format)                         devise_token_auth/registrations#update
                             | PUT    /api/v1/auth(.:format)                         devise_token_auth/registrations#update
                             | DELETE /api/v1/auth(.:format)                         devise_token_auth/registrations#destroy
api_v1_auth_validate_token   | GET    /api/v1/auth/validate_token(.:format)          devise_token_auth/token_validations#validate_token
api_v1_auth_failure          | GET    /api/v1/auth/failure(.:format)                 devise_token_auth/omniauth_callbacks#omniauth_failure
                             | GET    /api/v1/auth/:provider/callback(.:format)      devise_token_auth/omniauth_callbacks#omniauth_success
                             | GET    /omniauth/:provider/callback(.:format)         devise_token_auth/omniauth_callbacks#redirect_callbacks
omniauth_failure             | GET    /omniauth/failure(.:format)                    devise_token_auth/omniauth_callbacks#omniauth_failure
       GET    /api/v1/auth/:provider(.:format)               redirect(301)
api_v1 GET    /api/v1/search/:id(.:format)                   api/v1/home#search
       GET    /api/v1/medicine_search/:query(.:format)       api/v1/home#medicine_search

Routes for RailsAdmin::Engine:
dashboard GET         /                                      rails_admin/main#dashboard
index GET|POST    /:model_name(.:format)                 rails_admin/main#index
new GET|POST    /:model_name/new(.:format)             rails_admin/main#new
export GET|POST    /:model_name/export(.:format)          rails_admin/main#export
bulk_delete POST|DELETE /:model_name/bulk_delete(.:format)     rails_admin/main#bulk_delete
bulk_action POST        /:model_name/bulk_action(.:format)     rails_admin/main#bulk_action
show GET         /:model_name/:id(.:format)             rails_admin/main#show
edit GET|PUT     /:model_name/:id/edit(.:format)        rails_admin/main#edit
delete GET|DELETE  /:model_name/:id/delete(.:format)      rails_admin/main#delete
show_in_app GET         /:model_name/:id/show_in_app(.:format) rails_admin/main#show_in_app
