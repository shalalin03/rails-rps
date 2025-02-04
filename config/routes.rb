Rails.application.routes.draw do
  root "zebra#home"
  
  get "/rock", to: "zebra#rock"
  get "/paper", to: "zebra#paper"
  get "/scissors", to: "zebra#scissors"

  get("/rock", { :controller => "zebra", :action => "giraffe"})

  get("/paper", { :controller => "zebra", :action => "giraffe"})

  get("/scissors", { :controller => "zebra", :action => "giraffe"})
end
