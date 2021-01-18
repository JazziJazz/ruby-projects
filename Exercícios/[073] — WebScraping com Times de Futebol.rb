require 'nokogiri'
require 'net/http'

teams = Array.new

https = Net::HTTP.new('especiais.gazetadopovo.com.br', 443)
https.use_ssl = true

response = https.get('/futebol/tabela-campeonato-brasileiro-2020/')
document = Nokogiri::HTML(response.body)

document.search('tr td:nth-child(2) a').each do |times|
    teams.push("#{times.content}")
end

print("Os primeiros cinco colocados do Brasileirão dois mil e vinte:\n#{teams[0 .. 4].join(", ")}.\n\nOs últimos quatro colocados do Brasileirão dois mil e vinte:\n#{teams.reverse[0 .. 3].reverse.join(", ")}.\n\nOs times colocados em ordem alfabética:\n#{teams.sort.join(", ")}.\n\nO Flamengo está na posição: #{teams.index("Flamengo")}.")
