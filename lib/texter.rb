require 'sinatra'
require 'twilio-ruby'
account_sid = 'ACc212765845d7a2bbf3720efec8352103'
auth_token = '73b3a8dc74f665c39dc46bf3970fdf22'

class Texter

  def send_confirmation

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
      from: '+447592976861',
  to: '+447592976861',
  body: 'Thank you! Your order was placed and will be delivered before 18:52'
    })

  end

end