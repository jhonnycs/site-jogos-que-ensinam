CREATE DATABASE  IF NOT EXISTS `pp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pp`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: pp
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `caracteristica` varchar(200) DEFAULT NULL,
  `nivel` varchar(11) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogos`
--

LOCK TABLES `jogos` WRITE;
/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` VALUES (1,'Cubo Mágico','Lógica','ruim, medio','O cubo mágico ajuda a: aprimorar a leitura; desenvolver a interpretação; aumentar a auto-estima; incentivar o interesse e a iniciativa; melhorar o raciocínio lógico e potencializar a concentração. E, por consequência, o aluno acaba “quebrando o gelo” com a matéria e passa admirar mais a matemática.'),(2,'Mancala','Lógica','ruim, medio','Esse jogo tem a capacidade de estimular o raciocínio lógico de crianças, adolescentes e adultos. Para conquistar as sementes do adversário, o jogador deve elaborar estratégias, assim como deve estar atento ao fato de que, em algumas situações, será necessário perder sementes para ganhar outras em seguida. O jogo ajuda as crianças que o jogam a desenvolver noções matemáticas (como a de multiplicação), a exercitar o cérebro, (mantendo-o forte, ativo e jovem) e a reduzir os riscos de doenças mentais.'),(3,'Par ou Ímpar','Lógica','ruim, medio','Estimula o raciocínio lógico matemático, amplia a compreensão do sistema de numeração decimal por meio do estudo de uma característica de seus elementos: par ou ímpar, identifica e escreve a sequência dos números pares e ímpares, fixa a aprendizagem e sistematiza os conceitos de números pares e ímpares, sistematiza o conceito de par e ímpar e resolve situações problema com a temática proposta.'),(4,'Jogo da velha','Lógica','ruim, medio','O jogo ajuda no desenvolvimento do raciocínio, da lógica, estratégia e resolução de problemas, prever o movimento do adversário, aprender a formar sequência e ter paciência.'),(5,'Lego','Criatividade','ruim, medio','Habilidades de matemática e ciência: \r \r Construir com blocos LEGO promove o raciocínio espacial e consciência de proporções e padrões. Quando a criança constrói, sua mente usa o raciocínio sobre que peças vão funcionar melhor, como devem ser organizadas e quão grande ou pequena a criação deve ser. Os tijolos básicos de LEGO também ensinam frações e divisão. Do inteiro para a metade e até menores partes, as crianças estão aprendendo frações, mesmo sem perceber. Física e habilidades de engenharia também são sorrateiramente sendo desenvolvida. Quando uma criança constrói um prédio alto ou ponte, que ele ou ela está aprendendo a pensar em três dimensões, peso, equilíbrio e apoios de uso para essas estruturas devem ser pensados. Em modelos mais complexos, as crianças podem inclusive aprender noções de mecatrônica e mecânica. \r \r Desenvolvimento da Criança: \r \r O benefício mais óbvio é o desenvolvimento de habilidades motoras finas. As habilidades motoras finas são aquelas que requerem pequenos movimentos musculares. Como uma criança manipula os tijolos de Lego, ele está desenvolvendo a coordenação dos pequenos músculos dos dedos e das mãos. A capacidade de seguir instruções também é um benefício da construção de Lego. Muitos kits de Lego vêm com o passo-a-passo que uma criança deve seguir para completar a tarefa. \r \r Habilidades de pensamento: \r \r Quando uma criança constrói com LEGO, ela está usando habilidades para resolver problemas. Ela tem que descobrir quais blocos trabalham melhor em sua construção, às vezes usando o método de tentativa e erro. Planejamento e organização são outros benefícios. LEGO requer que a criança tenha um plano antes que ela construa, mesmo que seja apenas uma base. Ela também deve organizar seus pensamentos, assim como as peças de Lego, a fim de trazer a sua ideia para a vida. \r \r Criatividade: \r \r A criatividade é, talvez, o mais óbvio dos benefícios da aprendizagem com LEGO. Construção com blocos favorece a criatividade de uma criança. As crianças podem deixar de lado os kits didáticos e usar apenas as peças de Lego para criar qualquer coisa suas mentes podem imaginar. Livre e aberto, LEGO incentiva as crianças a pensar fora da caixa e sonhar infinitas possibilidades.'),(6,'Sudoku','Lógica,  Concentração','medio','O Sudoku desenvolve os raciocínios lógico matemático, numérico, quantitativo e analítico. Por causa desse conhecimento, a pessoa que pratica o jogo passa a usar mais a observação, percepção, construção de padrões e estabelecer conclusões. Cada modelo de Sudoku exige observação, raciocínio e construção de padrões gerais, bem como o domínio das operações aritméticas básicas.'),(7,'RPGs de tabuleiro','Criatividade, Interpretação, Sociabilidade','medio','Jogar uma partida de RPG é, entre outras coisas, se sentar em grupo para contar histórias, uma das práticas mais antigas da Humanidade, e que tem efeitos incríveis sobre o seu cérebro. Poucos passatempos são capazes de estimular a leitura de forma tão eficiente quanto o RPG de mesa. Seja D&D, Tormenta, Reinos de Ferro, Pathfinder, Leda dos Cinco Anéis ou qualquer outro jogo, você vai se ver envolto por livros e mais livros com centenas de páginas em pouco tempo. É muita coisa para ler e com um vocabulário mais amplo do que o que você adquire assistindo televisão ou vídeos no YouTube. Da mesma forma que esses livros estimulam a leitura, também são muito úteis para praticar inglês ou outro idioma, já que você vai ler muito e com atenção, seja para levar esse conhecimento para sua mesa de jogo ou simplesmente pela diversão de saber mais sobre o cenário do seu RPG favorito!'),(8,'Contação de histórias','Criatividade, Interpretação, Sociabilidade','medio','Durante a contação de histórias, a criança exercita a fantasia e a imaginação. Ela também adquire intimidade com a leitura, fluência e a habilidade de produzir textos e redações. Por isso, um benefício indiscutível das histórias é o despertar das crianças para a prática da leitura.'),(9,'Bonecos e bonecas','Criatividade','ruim, medio','Além de divertido, traz benefícios cognitivos, estimula a criatividade e pode ajudar a trabalhar sentimentos e habilidades. Além de que a brincadeira com bonecos e bonecas é uma reprodução do que as crianças vivenciam no cotidiano.'),(10,'Origami','Lógica','medio','Pode ser utilizado como uma forma de auxiliar o aluno a entender e compreender conteúdos matemáticos, além de relacionar outros conteúdos escolares com o material concreto, ajudar na coordenação motora, memorização e autoestima.'),(11,'Improviso','Criatividade, Interpretação, Sociabilidade','medio','Pode-se dizer que a improvisação é uma prática fundamental para a dança. Traz benefícios tais como a espontaneidade, a imprevisibilidade, a liberdade de criação, a sensibilidade ao momento de criar, a exteriorização das sensações internas. A improvisação permite que a criança desenvolva mais consciência corporal, aprimore sua criatividade e consiga perceber e interagir com outras pessoas, ao mesmo tempo em que desenvolve a dança.'),(12,'Confecção do próprio brinquedo','Criatividade, Sociabilidade','medio','A confecção de brinquedos reciclados poderá contribuir para a interatividade e sociabilidade das crianças, além de desenvolver a percepção de capacidade de confeccionar os próprios brinquedos. O benefício para uma criança ao brincar de construir brinquedos com seus pais é ainda maior. As crianças aprendem comportamentos importantes para o desenvolvimento cognitivo, que estimulam a memória, o pensamento lógico, linguagem da criança e vínculo afetivo com seus pais.'),(13,'Jogo da memória','Concentração','ruim, medio','Muitos jogos deixaram de ocupar o papel apenas de diversão e ganharam um espaço na rotina educacional das crianças, o jogo da memória é um deles, além de entreter os pequenos por um bom tempo, o jogo da memória traz benefícios como: a capacidade de desenvolver habilidades de concentração, autonomia, confiança e memorização. Podendo ser uma opção para todas as faixas etárias.');
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-16 22:25:48
