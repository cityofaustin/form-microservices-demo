Rails.application.routes.draw do
  root 'home#index'
  match 'email_form' => 'home#email_form', via: [:get]
  match 'github_form' => 'home#github_form', via: [:get]
end
