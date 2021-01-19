require "google/cloud/translate"
require "nokogiri"
require "net/http"

class TranslateService;
    def initialize(phrase, language);
        @phrase = phrase
        @language = language
    end

    def get_phrase();
        return @phrase
    end

    def get_language();
        return @language
    end

    def get_information();
        puts("Gooby Translate V0.1.0:\n\nBem-vindo ao software de tradução em tempo real de seus textos. Utilizamos a API do Google Translate para efetuar a tradução de suas palavras, portanto se a tradução for imprecisa nós não nos responsábilizamos.\n\nPara fazer uso do software basta passar por parâmetro o seu texto e selecionar a linguagem para qual você deseja fazer uma tradução.\n\nDigite 'linguagens' para ver a lista de linguagens disponíveis para tradução. Ou digite qualquer coisa além disso para encerrar o programa.")

        answer = gets.chomp().upcase()

        if answer == "LINGUAGENS";
            languages = Array.new

            https = Net::HTTP.new('cloud.google.com', 443)
            https.use_ssl = true
            document = Nokogiri::HTML(https.get('/translate/docs/languages').body())
            count = 0

            document.search("tbody tr td:first-child").each do |language|
                languages.append([language.content()])
            end

            document.search("tbody tr td:last-child").each do |initials|
                languages[count].append(initials.content())
                count += 1
            end

            puts("\n\n\nAtenção a notação! A linguagem é seguida por sua sigla, que você deve utilizar se quiser traduzir para determinada linguagem. Use a sigla como parâmetro.\n\n")

            languages.each do |language|
                puts("#{language}")
            end
        end
    end

    def get_translation();
        configurations = {
            credentials: ENV["GOOGLE_APPLICATION_CREDENTIALS"] = "MyRuby.json",
            project_id: "meuprojetoruby",
            location_id: "global"
        }

        client = Google::Cloud::Translate.translation_service()
        parent = client.location_path(project: configurations[:project_id], location: configurations[:location_id])
        response = client.translate_text(parent: parent, contents: [@phrase], target_language_code: @language)

        response.translations.each do |translation|
            puts("Bem-vindo ao Gooby Translate Service:\n\nA frase traduzida é igual a: #{translation.translated_text}\nA frase original é igual a: #{@phrase}\n")
        end
    end

    def set_phrase(phrase);
        @phrase = phrase
    end

    def set_language(language);
        @language = language
    end
end


newTraduction = TranslateService.new('Esse é o repósitório que eu armazeno meus projetos pequenos em Ruby.', 'en')
newTraduction.get_translation()
# newTraduction.get_information()