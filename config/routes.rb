Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square/:number", {:controller => "calculations", :action => "sqr"})
  get("/square_root/:number", {:controller => "calculations", :action => "sqrt"})

  get("/payment/:apr/:mths/:principal", {:controller => "calculations", :action => "pmt"})

end
