class HomeController < ApplicationController
  def index
    if params[:newMode]
      s = TCPSocket.open("127.0.0.1", "2973")
      to_send = "set pattern #{params[:newMode]}"
      puts to_send
      s.write(to_send)
      s.close
    end
  end

  
end
