require 'soundplayer'

music_file = '/home/rodrigosc/RubymineProjects/RubyTesteProject/2pac.mp3'
Sound.new(music_file).play

print("Bem-vindo ao player MP3 em Ruby! Estamos utilizando a gem sound player!\nVocê está ouvindo agora: 2Pac ft. Eazy-E & Ice Cube - Real Thugs\n\nRelaxe e aproveita a música ;)\n\nPara parar digite qualquer coisa.")

#  Garante que o programa continue rodando até ser digitado algum dado. O programa necessita permanecer ativo para que a música toque.
gets.chomp
