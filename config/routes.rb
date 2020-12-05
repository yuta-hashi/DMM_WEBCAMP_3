Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # /topのURLでgetめっそどが実行されるとhomesコントローラーのtopアクションを実行する
  get "top" => "homes#top"
  
  # /todolistsのURLでpostメソッドが実行されるとtodolistsコントローラーのcreateアクションが実行される
  post "todolists" => "todolists#create"
  
  # /todolistsのURLでgetメソッドが実行されるとtodolistsコントローラーのindexアクションが実行される
  get "todolists" => "todolists#index"
  
  #/todolists/:idのURLでgetメソッドが実行されるとtodolistsコントローラーのshowアクション(todolist)が実行される
  get "todolists/:id" => "todolists#show", as: "todolist"
  
  # /todolists/:id/editのURLでgetメソッドが実行されるとtodolistsコントローラーのeditアクション(edit_todolist)が実行される
  get "todolists/:id/edit" => "todolists#edit", as: "edit_todolist"
  
  #/todolists/:idのURLでpatchメソッドが実行されるとtodolistsコントローラーのupdateアクション(update_todolist)が実行される
  patch "todolists/:id" => "todolists#update", as: "update_todolist"
  
end

