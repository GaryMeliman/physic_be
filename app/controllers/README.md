== Controladores de típico MVC que heredan de application_controller.rb
== Controladores usados


* Prefijo                      | Verbo  HTTP | Ruta                                           | Acción en Controlador
* ---------------------------------------------------------------------------------------------------------------------
* abavilities                  | POST        | /abavilities(.:format)                         | abavilities#create
* abavility                    | PATCH       | /abavilities/:id(.:format)                     | abavilities#update
*                              | PUT         | /abavilities/:id(.:format)                     | abavilities#update
* pharmacy                     | GET         | /pharmacy(.:format)                            | profile#pharmacy
* cancel_pharmacy_registration | GET         | /pharmacies/cancel(.:format)                   | registrations#cancel
*       pharmacy_registration  | POST        | /pharmacies(.:format)                          | registrations#create
*   new_pharmacy_registration  | GET         | /pharmacies/sign_up(.:format)                  | registrations#new
*  edit_pharmacy_registration  | GET         | /pharmacies/edit(.:format)                     | registrations#edit
*                              | PATCH       | /pharmacies(.:format)                          | registrations#update
*                              | PUT         | /pharmacies(.:format)                          | registrations#update
*                              | DELETE      | /pharmacies(.:format)                          | registrations#destroy
* root                         | GET         | /                                              | home#index
* home_index                   | GET         | /home/index(.:format)                          | home#index
* search                       | GET         | /search/:id(.:format)                          | home#search
* type_ahead                   | GET         | /type_ahead/:q(.:format)                       | home#type_ahead
* create_petition              | GET         | /petitions/:medicine_id/:pharmacy_id(.:format) | petitions#create
* update_petition              | GET         | /petitions/:id(.:format)                       | petitions#update
* near_pharmacies              | GET         | /near(.:format)                                | home#near
* show_map                     | GET         | /show_map/:id(.:format)                        | home#show_map
* ------------------------------------------------------------------------------------------------------------------------
* API
* api_v1_user                  | GET         | /api/v1/user(.:format)                         | api/v1/profile#user
* api_v1                       | GET         | /api/v1/search/:id(.:format)                   | api/v1/home#search
*                              | GET         | /api/v1/medicine_search/:query(.:format)       | api/v1/home#medicine_search
