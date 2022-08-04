//
//  ModeloDados.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 28/07/22.
//

import Foundation

class Figura: Identifiable, ObservableObject {
    var id = UUID()
    var nome: String
    var imagem: String
    var frase: String
    var descricao: String
    @Published var vidas: Int
    @Published var potencia: Double
    
    init(nome: String, imagem: String, frase: String, descricao: String, vidas: Int, potencia: Double){
        self.nome = nome
        self.imagem = imagem
        self.frase = frase
        self.descricao = descricao
        self.vidas = vidas
        self.potencia = potencia
    }
}

class MinhaColecao: ObservableObject{
    @Published var figuras: [Figura] = []
}

var figuras = [
    Figura(
        nome:"Mingle",
        imagem:"figura_01",
        frase:"Problema em dobro",
        descricao:"O Mingle se destaca por fazer o dobro do trabalho na metade do tempo, com extrema precisão. Essas habilidades são úteis para ela em sua função de Analista de Dados Sênior para uma empresa internacional de computação em nuvem. Ela também tem uma propensão para dança de salão, dança de linha e praticamente qualquer tipo de atividade que a deixe dançar ao som da música.",
        vidas:2,
        potencia:0.42
    ),
    Figura(
        nome:"Yodel",
        imagem:"figura_02",
        frase:"Iodelaii Hii Huu!",
        descricao:"Yodel cresceu em uma família de cantores e faladores e nunca conseguia falar uma palavra. Então, seu vasto talento para o yodeling surgiu. Agora ele se apresenta para fãs adoradores em todo o mundo, e sempre tem a voz mais alta na mesa de jantar. Aliás, ele também é um grande defensor da neutralidade da rede e passa incontáveis horas moderando um fórum na internet dedicado exclusivamente a esse assunto.",
        vidas:4,
        potencia:0.19
    ),
    Figura(
        nome:"Squido",
        imagem:"figura_03",
        frase:"Um olho para o design",
        descricao:"Squido tem as mãos, ou melhor, tentáculos, em tudo. Em primeiro lugar, ele é um web designer com foco na estética visual, mas também gosta de design de UX e garante que o que ele cria seja traduzido de maneira ideal para o usuário final. Nas horas de folga, ele é um ávido fotógrafo da natureza e jogador de boliche.",
        vidas:3,
        potencia:0.91
    ),
    Figura(
        nome:"Spook",
       imagem:"figura_04",
       frase:"São e salvo",
       descricao:"Decifrar códigos e combater hackers é o forte de Spook. Ela ocupa uma posição de destaque como chefe de segurança cibernética do Departamento de Defesa de figuras, onde frustra ataques a sistemas de computadores do governo com a mesma frequência que pisca. Quando não está no trabalho, Spook se delicia em assustar mansões assombradas e passeios fantasmagóricos.",
       vidas:5,
       potencia:1
    ),
    Figura(
        nome:"Melville",
       imagem:"figura_05",
       frase:"Guru de rede",
       descricao:"Configurar redes de computadores sempre foi fácil para Melville. Em sua função de Engenheiro de Rede Sênior do Landon Hotel, Melville constrói projetos complexos para redes de comunicação, uma tarefa que requer muita atenção aos detalhes e paciência. Quando não está no trabalho, Melville escolhe atividades mentais menos desgastantes, como caminhar nas colinas perto de sua casa no Vale do Silício.",
       vidas:2,
       potencia:0
    ),
    Figura(
        nome:"Filo",
       imagem:"figura_06",
       frase:"Padeiro de dia, técnico de noite",
       descricao:"Filo recebeu o nome da maravilhosa massa de pastel amanteigada que os figuras adoram. Ela é uma confeiteira e confeiteira proeminente em círculos de figuras e está sempre explorando e compartilhando novas tendências de sobremesas. Em seu tempo livre, no entanto, ela é bastante técnica e se interessa pelo desenvolvimento de aplicativos para web e dispositivos móveis. Ela até criou um aplicativo de pedido de bolo personalizado para seu negócio de confeitaria.",
       vidas:3,
       potencia:0.29
    ),
    Figura(
        nome:"Blade",
       imagem:"figura_07",
       frase:"APPetite Monstra",
       descricao:"Blade é freelancer como desenvolvedor de aplicativos móveis e construiu alguns dos aplicativos Android e iOS mais populares usados na sociedade moderna de figuras, incluindo o premiado Monster APPetite, que rastreia o consumo de calorias e a atividade do figura preocupado com a saúde. Em seu tempo livre, ele compete em competições nacionais de agilidade com seu border collie Winston.",
       vidas:5,
       potencia:0.34
    ),
    Figura(
        nome:"Timber",
       imagem:"figura_08",
       frase:"Especialista em banco de dados",
       descricao:"Um solucionador de problemas nato, Timber está especialmente animado para resolver problemas de negócios complexos usando bancos de dados. Como administrador de banco de dados do Globe Bank International, ele pode exercitar seus músculos mentais usando suas certificações em Oracle, Microsoft SQL Server e MySQL. Quando não está atrás do computador, Timber muitas vezes pode ser encontrado andando de bicicleta, surfando ou descansando com um bom romance policial.",
       vidas:2,
       potencia:0.11
    ),
    Figura(
        nome:"Skedaddle",
       imagem:"figura_09",
       frase:"Jogo da vida",
       descricao:"Quando Skedaddle era adolescente, seus pais não conseguiam mantê-lo longe de seu Game Boy. Na verdade, eles estavam seriamente preocupados que ele não encontrasse uma carreira adequada. Agora, como um desenvolvedor de jogos de destaque para a Red30 Tech, ele encontrou sua verdadeira vocação... e deixou as preocupações de sua família de lado. Você provavelmente poderia ter adivinhado isso, mas em seu tempo livre Skedaddle adora pagar jogos de computador.",
       vidas:4,
       potencia:0.07
    ),
    Figura(
        nome:"Smiley",
       imagem:"figura_10",
       frase:"Não se preocupe, seja feliz!",
       descricao:"Com a má reputação que eles recebem dos filmes, os figuras ficam bem difíceis. Talvez nenhum figura tenha feito mais para esmagar estereótipos do que Smiley, que pode pegar a carranca de qualquer pessoa e transformá-la de cabeça para baixo. É por isso que Smiley tem a reputação de ser a melhor especialista em suporte de computador em sua equipe de TI, três anos consecutivos.",
       vidas:1,
       potencia:0.73
    ),
    Figura(
        nome:"Frex",
       imagem:"figura_11",
       frase:"Nasci lider",
       descricao:"Frex sempre teve um talento especial para a liderança, começando em seus dias como um Monster Scout. Depois de estudar ciência da computação na faculdade e trabalhar como especialista em TI em várias grandes empresas, ele naturalmente seguiu o caminho da administração. Agora, como gerente de TI de uma empresa da Fortune 500, ele coloca seu conhecimento técnico em prática, ao mesmo tempo em que lidera uma equipe de engenheiros talentosos. Os hobbies de Frex incluem golfe, bilhar e serviço comunitário.",
       vidas:3,
       potencia:0.62
    ),
    Figura(
        nome:"Drift",
       imagem:"figura_12",
       frase:"Nas nuvens",
       descricao:"Depois de anos de todos dizendo que sua cabeça estava nas nuvens, Drift encontrou sua vocação como engenheira de software desenvolvendo uma solução em nuvem bem conhecida para a gigante da computação, Red30 Tech. Depois do trabalho, ela prefere relaxar pegando vento em sua vela e voando de parapente no céu.",
       vidas:4,
       potencia:0.21
    )
]

