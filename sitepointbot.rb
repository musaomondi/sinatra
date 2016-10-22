require 'telegram/bot'

token = '184834663:AAGOUYli8k-G0aXl8MLyBdOt4Ob5NQ3D86I'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "I am the SitePoint bot, My commands are /sitepoint /map")
    when '/sitepoint'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to http://sitepoint.com")
    when '/map'
      bot.api.send_location(chat_id: message.chat.id, latitude: 0.0067, longitude: 34.5985)
    end
  end
end
