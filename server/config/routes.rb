Since::Application.routes.draw do
  get    '/users',              to: 'users#index'
  get    '/users/:id',          to: 'users#show'
  get    '/users/:id/trackers', to: 'trackers#belongings'
  post   '/trackers/new',       to: 'trackers#create'
  get    '/trackers/:id',       to: 'trackers#show'
  put    '/trackers/:id',       to: 'trackers#update'
  delete '/trackers/:id',       to: 'trackers#destroy'
  get    '/push/:secret',       to: 'notifications#push'
  get    '/push/:secret/test',  to: 'notifications#show'
end
