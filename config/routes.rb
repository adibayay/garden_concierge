Rails.application.routes.draw do
  # Homepage
  get("/", { :controller => "plants", :action => "index" })
  # Routes for the Companion resource:

  # CREATE
  post("/insert_companion", { :controller => "companions", :action => "create" })
          
  # READ
  get("/companions", { :controller => "companions", :action => "index" })
  
  get("/companions/:path_id", { :controller => "companions", :action => "show" })
  
  # UPDATE
  
  post("/modify_companion/:path_id", { :controller => "companions", :action => "update" })
  
  # DELETE
  get("/delete_companion/:path_id", { :controller => "companions", :action => "destroy" })

  #------------------------------

  # Routes for the Grow date resource:

  # CREATE
  post("/insert_grow_date", { :controller => "grow_dates", :action => "create" })
          
  # READ
  get("/grow_dates", { :controller => "grow_dates", :action => "index" })
  
  get("/grow_dates/:path_id", { :controller => "grow_dates", :action => "show" })
  
  # UPDATE
  
  post("/modify_grow_date/:path_id", { :controller => "grow_dates", :action => "update" })
  
  # DELETE
  get("/delete_grow_date/:path_id", { :controller => "grow_dates", :action => "destroy" })

  #------------------------------

  # Routes for the Garden resource:

  # CREATE
  post("/insert_garden", { :controller => "gardens", :action => "create" })
          
  # READ
  get("/gardens", { :controller => "gardens", :action => "index" })
  
  get("/gardens/:path_id", { :controller => "gardens", :action => "show" })
  
  # UPDATE
  
  post("/modify_garden/:path_id", { :controller => "gardens", :action => "update" })
  
  # DELETE
  get("/delete_garden/:path_id", { :controller => "gardens", :action => "destroy" })

  #------------------------------

  # Routes for the Plant resource:

  # CREATE
  post("/insert_plant", { :controller => "plants", :action => "create" })
          
  # READ
  get("/plants", { :controller => "plants", :action => "index" })
  
  get("/plants/:path_id", { :controller => "plants", :action => "show" })
  
  # UPDATE
  
  post("/modify_plant/:path_id", { :controller => "plants", :action => "update" })
  
  # DELETE
  get("/delete_plant/:path_id", { :controller => "plants", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
