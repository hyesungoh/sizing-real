Rails.application.routes.draw do
  devise_for :users
  root 'sizingreal#main'

  get 'sizingreal/main'

  get 'sizingreal/input'

  get 'sizingreal/result'

  get 'sizingreal/mypage/:user_id' => 'sizingreal#mypage'

  post 'sizingreal/update/:user_id' => 'sizingreal#update'

end
