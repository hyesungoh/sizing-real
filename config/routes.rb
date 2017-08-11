Rails.application.routes.draw do
  root 'sizingreal#main'

  get 'sizingreal/main'

  get 'sizingreal/input'

  get 'sizingreal/result'

  get 'sizingreal/mypage'

end
