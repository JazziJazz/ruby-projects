require 'net/http'
require 'uri'

def check_status_code(link_of_website)
    uri = URI(link_of_website)
    res = Net::HTTP.get_response(uri)

    res.code
end

def url_is_online?(link_of_website)
    begin
        site = check_status_code(link_of_website)
    rescue (SocketError)
        return print("O site não existe, ou está indisponível.")
    else
        return print("Consegui acessar o site com sucesso, o código é #{site}.")
    end
end

url_is_online?("https://onebitcode.com/")