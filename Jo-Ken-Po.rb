def boas_vindas
    puts "Bem vindo ao jogo jo ken po"
    puts "Qual o seu nome?"
    nome = gets.strip
    puts "\n\n"
    puts "Prazer em te conhecer, #{nome}!"
    puts "Vamos iniciar o jogo..."
end

def jogada_jogador
    puts "Escolha uma opção:"
    puts "1 - Pedra"
    puts "2 - Papel"
    puts "3 - Tesoura"
    resposta = gets.strip
    return resposta.to_i
    puts "\n\n"
end

def jogada_computador
    return rand(1..3)
end

def resultado(escolhe_jogador, escolhe_computador)
    if escolhe_jogador == escolhe_computador
        return "Empate"
    elsif escolhe_jogador == 1 && escolhe_computador == 2
        return "Você perdeu"
    elsif escolhe_jogador == 1 && escolhe_computador == 3
        return "Você ganhou"
    elsif escolhe_jogador == 2 && escolhe_computador == 1
        return "Você ganhou"
    elsif escolhe_jogador == 2 && escolhe_computador == 3
        return "Você perdeu"
    elsif escolhe_jogador == 3 && escolhe_computador == 1
        return "Você perdeu"
    elsif escolhe_jogador == 3 && escolhe_computador == 2
        return "Você ganhou"
    else
        return "Opção inválida"
    end
end

def jogo
    escolhe_jogador = jogada_jogador
    escolhe_computador = jogada_computador
    resultado = resultado(escolhe_jogador, escolhe_computador)
    puts "\n"
    puts "Você escolheu #{escolhe_jogador} e o computador escolheu #{escolhe_computador}"
    puts "\n"
    puts "O resultado foi #{resultado}"
    puts "\n\n"
end

boas_vindas
loop do
    jogo
    puts "Deseja jogar novamente? (s/n)"
    resposta = gets.strip.downcase != "s"
    break if resposta
end
puts "Obrigado por jogar! Volte sempre!"