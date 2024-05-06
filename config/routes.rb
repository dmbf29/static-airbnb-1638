Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  root to: 'flats#index'
  # :id is placeholder for WHATEVER comes after the /
  get '/flats/:id', to: 'flats#show', as: :flat
end

# CRUD Rails convention
# index -> all the flats
# show  -> one specific flat


# about
# contact
