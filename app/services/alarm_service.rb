require 'line/bot'

class AlarmService
  def client
    @client ||= Line::Bot::Client.new do |config|
      config.channel_secret = 'cfbcf114c5bdf734945acf6485e7daf3'
      config.channel_token = 'ZivK2dyvNmKLaLGDTa9h+k7BafpoOhj+XGqBTKtGQs23PKnYKEVrD7JDP6sz+0ThbhZraZaPlBbBM/F8F7BMVyoyj9G9j6izxI5rmUI7KmHdvb/xxevVzigE90lVvwK2pbn0PuQpUjEOgspLMcSq9wdB04t89/1O/w1cDnyilFU='
    end
  end

  def run
    message = {
      type: "text",
      text: "現在時間：#{Time.now} 趕快起床吧"
    }
    client.push_message('U95cd3295329a7df442d76bb7f775a163', message)
  end
end