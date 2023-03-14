# Routes Configuration

## config/routes.rb


**Defining a single route**
```rb
Rails.application.routes.draw do
  get '/books' => 'books#index'
end
```



This only creates a get endpoint `/books`. Instead a better way.

**Defining a resource route**

```rb
Rails.application.routes.draw do
  resources :books
end
```

This creates all of the restful resources: `GET, PUT, PATCH, POST, DELTEE, ....`. Here's a list of routes created.

```sh
                                  Prefix Verb   URI Pattern                                                                                       Controller#Action
                                   books GET    /books(.:format)                                                                                  books#index
                                         POST   /books(.:format)                                                                                  books#create
                                    book GET    /books/:id(.:format)                                                                              books#show
                                         PATCH  /books/:id(.:format)                                                                              books#update
                                         PUT    /books/:id(.:format)                                                                              books#update
                                         DELETE /books/:id(.:format)                                                                              books#destroy

```

**Restricting the resources with only**

```rb
Rails.application.routes.draw do
  resources :books, only: :index
end

This only creates a index, GET Route

```

Routes Thus:

```sh
                                  Prefix Verb   URI Pattern                                                                                       Controller#Action
                                   books GET    /books(.:format)                                                                                  books#index

```

> Though we defined a resource, now we need to define a **controller** in the next series.