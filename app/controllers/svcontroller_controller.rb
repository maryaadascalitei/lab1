class SvcontrollerController < ApplicationController
  def index
  	UserMailer.welcome_email('abc@yahoo.com').deliver_now
  end
end
