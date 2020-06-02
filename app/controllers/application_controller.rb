class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include DefaultPageContent


  # 調子が悪いので、application_controllerに記載
  # include CurrentUserConcern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User", 
                  first_name: "Guest", 
                  last_name: "User", 
                  email: "guest@example.com"
                  )
  end
end