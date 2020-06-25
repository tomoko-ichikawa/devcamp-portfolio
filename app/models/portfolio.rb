class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  # validates_presence_of :title, :body, :main_image, :thumb_image

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  def self.angular
    where(subtitle: "乃木坂4期生")
  end

  def self.by_position
    order("position ASC")
  end

  scope :ruby_on_rails_portfolio_itmes, -> { where(subtitle: '乃木坂4期生') }
end
