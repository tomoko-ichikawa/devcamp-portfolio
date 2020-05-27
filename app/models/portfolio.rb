class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: "乃木坂4期生")
  end

  scope :ruby_on_rails_portfolio_itmes, -> { where(subtitle: '乃木坂4期生') }
end
