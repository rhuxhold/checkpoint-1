Rails.application.routes.draw do

  get("/areas/square/:length_of_side", { :controller => "areas", :action => "square" })

  get("/areas/circle/:radius", { :controller => "areas", :action => "circle" })

  get("/areas/triangle/:base/:vertical_height", { :controller => "areas", :action => "triangle" })

  get("/areas/trapezoid/:length_of_side/:horizontal_width/:vertical_height", { :controller => "areas", :action => "trapezoid" })

  get("/areas/rectangle/:horizontal_width/:vertical_height", { :controller => "areas", :action => "rectangle" })

  get("/areas/ellipse/:horizontal_width/:vertical_height", { :controller => "areas", :action => "ellipse" })

  get("/random_circles", { :controller => "areas", :action => "random" })

  get("/", { :controller => "pages", :action => "home" })

end
