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
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest
  end
end
