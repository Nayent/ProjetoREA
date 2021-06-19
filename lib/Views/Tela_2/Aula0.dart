import 'package:flutter/material.dart';
import 'package:python_project/services/txts.dart';

class Aula0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 100.0, right: 100.0),
      color: Colors.white,
      width: MediaQuery.of(context).size.width - 100,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText("Apresentação do Curso"),
            NormalText('O ensino de algoritmos envolve teoria e prática de laboratório em instituições de ensino superior. Cabe ao docente elaborar material didático de uma ampla gama de recursos da literatura e de sua experiência profissional e pessoal para conseguir abranger atividades práticas, aprimorar o entendimento do estudante e aumentar o interesse pelo conteúdo. Alternativas complementares utilizadas nas aulas são materiais complementares de ensino apoiado por ferramentas educacionais eletrônicas, e a apresentação para os estudantes de casos de uso prático que envolve a linguagem de programação. A montagem de um ambiente virtual de ensino dedicado tem elevado custo e exige comprometimento para a manutenção e atualização periódica do ambiente. Além disso, o ambiente de ensino convencional é restrito ao local físico onde as aulas são ministradas. '),
            NormalText('Esse projeto pretende realizar o desenvolvimento de Recursos Educacionais Abertos (REA) para o ensino complementar de linguagem de programação procedimental com a linguagem Python aplicada a problemas de robótica educacional.'),
            NormalText('A robótica é uma disciplina com fundamentação teórica e prática ampla e multidisciplinar. Essa área do conhecimento pode ser ministrada de maneira sucinta e simplificada para abranger problemáticas do mundo real, como solucionar problemas de localização, mobilidade, desvio de obstáculos, aquisição de dados do ambiente, visão e planejamento de ações [1][2].'),
            NormalText('Há uma complexidade inerente no que diz respeito à criação de protótipos robóticos em tempo hábil às atividades de ensino. Existem vários kits educacionais de robótica disponíveis no mercado, como exemplo, Lego Mindstorms [2]  e muitos outros kits nacionais e importados. De acordo com Silva e Scherer[3] esses kits são compostos por: (I) componentes de hardware, (II) componentes de software e (III) material de apoio. Os componentes de hardware (I) são formados por: a) Componentes estruturais: compõem a estrutura física do robô. Exemplos: chassi, roda, garra, base de fixação, etc; b) componentes eletrônicos: realizam a movimentação e aquisição de informações do ambiente. Exemplo: motores, sensores de luz, som, temperatura, câmera de vídeo, etc.; c) Unidade programável: microcontroladores para inserir o programa de interação humano-computador. Os componentes de software (II) são basicamente formados por linguagens de programação textuais ou gráficas: podem ser linguagens proprietárias (Scratch, Logo, Arduino, Lego MindStorms) ou tradicionais (C, C++, Java, Delphi, etc.). Finalmente, o material de apoio (III) é composto por: a) material de apoio pedagógico para o professor; b) manual do usuário com a descrição de instalação e uso da plataforma educacional; c) documentação técnica específica.'),
            NormalText('Apesar da aparente restrição quanto ao desenvolvimento de experimentos específicos, os kits robóticos educacionais são alternativas viáveis para simplificar o preparo do material didático para as atividades de ensino de robótica. Também é possível que essas plataformas estabeleçam interfaces de comunicação com outras plataformas, e mesmo com linguagens de programação. O custo para aquisição de tais kits restringe o seu uso em salas de aula físicas com muitos estudantes.'),
            NormalText('Nesse sentido, o projeto busca ensinar algoritmos de programação com robótica através de uma série de experimentos didáticos. Os Recursos Educacionais Abertos (REA) são uma alternativa viável para atender a um grande número de estudantes.'),
            NormalText('O impacto social relevante desse projeto é tornar disponível o conteúdo produzido on-line, de forma a abranger estudantes dentro e fora da instituição. O projeto busca atender à demanda de estudantes nas áreas de robótica educacional, lógica computacional, sistemas de informação e linguagens de programação. O projeto é baseado em fundamentação teórica  para desenvolver o material didático e pedagógico para desenvolver aplicações para a interação com robôs móveis, e realizar experimentos didáticos.'),
            NormalText('As disciplinas que podem ser atendidas com esse projeto são as de Fundamentos de Programação, Introdução à Computação e Robótica Básica de cursos de Engenharia de Computação.'),
            TitleText("Escopo e Objetivo da Proposta"),
            NormalText('O objetivo desse projeto é o de utilizar kits robóticos para o ensino de algoritmos através de problemas de robótica computacional. O projeto também tem o intuito de oferecer REA para ensino de robótica à distância, que ensine os procedimentos para a interação com robôs educacionais [3][4]. Essa proposta visa atender à comunidade com um vasto repositório didático, organizado, bem documentado e com acompanhamento do professor de maneira a esclarecer as principais dúvidas para a montagem, configuração e experimentação robótica. Apesar de ser uma prática considerada por muitos um hobby, o uso da robótica contribui e complementa as atividades acadêmicas de ensino em virtude de seu caráter prático. Destacamos nessa proposta uma abordagem pragmática para a elaboração de experimentos didáticos que envolvam exercícios de lógica de programação em linguagem procedimental. Com a apresentação do conteúdo on-line, esse projeto é uma forma de ensino à distância de incentivo ao uso de linguagem de programação e lógica computacional, além do caráter prático da interação entre os estudantes por meio de redes sociais, blogs e vlogs [4].'),
            NormalText('Como justificativa, existe uma extensa quantidade de material online disponível para a interação com kits robóticos. No entanto, nem sempre é possível utilizar os materiais encontrados, por diversos motivos: profundidade ou clareza dos preceitos abordados, continuidade das explicações, custo elevado dos componentes, obsolescência dos componentes utilizados, excesso de informação e outros. Por conta disso, o presente projeto busca oferecer material didático-pedagógico como um guia didático de auxílio para experimentação de algoritmos. Como meta, este projeto pretende reduzir o esforço para entendimento, configuração e uso da robótica em atividades práticas acadêmicas. Ao final do projeto, os estudantes terão condições de realizar experimentos robóticos e de divulgar os seus experimentos em redes sociais.'),
            NormalText('O presente projeto se enquadra nos quesitos de: a) Desenvolvimento tecnológico: no que se refere à investigação e produção de tecnologias inovadoras e serviços tecnológicos de caráter teórico e prático; b) Educação profissional técnica: referente à abordagem de aplicação prática dos conceitos teóricos envolvidos, como alternativa para reforçar o conhecimento de linguagens de programação, lógica de programação, software e hardware; c) Inovação tecnológica: com a oferta de explicação didática exclusiva e adequada para a robótica educacional; d) Tecnologia da informação: ensino de robótica para atender às demandas de inclusão digital.'),
            TitleText("Resultados e Materiais digitais Previstos"),
            NormalText('Os resultados digitais previstos são Recursos Educacionais de Aprendizagem nos seguintes formatos digitais:'),
            NormalText('1) Documento em formato de E-book sobre programação em linguagem Python[5].'),
            NormalText('2) BLOG com exercícios práticos de programação com respostas. O BLOG é previsto de ser realizado em conjunto com os alunos durante a execução do projeto em aulas.'),
            NormalText('3) VLOG com exercícios práticos de robótica com respostas. O /vLOG é previsto de ser realizado em conjunto com os alunos durante a execução do projeto em aulas.'),
            NormalText('4) Gamification em uma plataforma digital gratuita. A gamificação é prevista de ser realizada em conjunto com os alunos durante a execução do projeto em aulas.'),
            NormalText('5) Rede social para interação e colaboração entre os alunos participantes do projeto. A rede social é prevista de ser realizada em conjunto com os alunos durante a execução do projeto em aulas.'),
            TitleText("Metodologia Proposta"),
            NormalText('Serão utilizadas metodologias ativas [6] com o uso d e software emulador de robôs móveis. Cada aula terá um:'),
            NormalText('1) Plano de Aula'),
            NormalText('2) Conteúdo Teórico'),
            NormalText('3) Atividades Práticas de Programação'),
            TitleText("Observações Gerais"),
            NormalText('Os estudantes deverão realizar a instalação dos softwares explicados na próxima aula.'),
            NormalText('')
          ],
        ),
      ),
    );
  }
}
