-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Nov-2022 às 02:39
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca_trabalho`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`idAdmin`, `Email`, `Senha`) VALUES
(1, 'admin@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `Autor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`Autor`) VALUES
('Abdi Nazemian'),
('Abigail Dean'),
('Agustina Bazterrica'),
('Alexandria Bellefleur'),
('Alice Oseman'),
('Alison Cochrun'),
('Allison Pataki'),
('Ana C. Alves'),
('André Aciman'),
('Anne Frank'),
('António Barreto'),
('Arquelana'),
('Ashley Herring Blake'),
('Bolu Babalola'),
('Brian Zepka'),
('Caíto Mainier'),
('Caleb Carr'),
('Casey McQuiston'),
('Clara Alves'),
('Clare Lydon'),
('Colleen Hoover'),
('Daniel Takata Gomes'),
('David Graeber'),
('Dhonielle Clayton'),
('Diogo Lara'),
('DjiEm'),
('Doug Magee'),
('Elayne Baeta'),
('Elena Armas'),
('Emily Henry'),
('Estelle Laure'),
('Evandson Sousa'),
('Fabrício de Andrade Felício'),
('Frederico Elboni'),
('Gabriel Nascimento'),
('Gary Chapman'),
('Isaac Rosa'),
('Isabel Meziat'),
('Izabela Wagner'),
('James Joyce'),
('Jb Campos'),
('Jennifer Egan'),
('Jessica Batista'),
('Jessica Goodman'),
('João Victor Pires'),
('José Saramago'),
('Juan Villoro'),
('Juliana Dantas'),
('Kacen Callender'),
('Kelly Quindlen'),
('Laura Schroff'),
('Laurent Binet'),
('Leah Johnson'),
('Leonid Andreiev'),
('Lília Uzêda'),
('Lilian Jackson Braun'),
('Lima Barreto'),
('Lloyd Jones'),
('Lois McMaster Bujold'),
('Lolita Pille'),
('Louis Begley'),
('Lúcia Machado de Almeida'),
('Lynn Sholes'),
('Margaret George'),
('Maria Dezonne Pacheco Fernandes'),
('Maria Freitas'),
('Martin E. P. Seligman'),
('Mia Sheridan'),
('Michael Arruda'),
('Monja Coen'),
('Natasha Bowen'),
('Nathalie Somers'),
('Nina Melga'),
('Norberto Bobbio'),
('Patrick Modiano'),
('Pedro Rhuas'),
('Rachel Vincent'),
('Raíssa Selvaticci'),
('Ray Tavares'),
('Ricardo Molina'),
('Robbie Couch'),
('Robert Gerwarth'),
('Robert Greene'),
('Rosemary Sullivan'),
('Sam Eastland'),
('Scott McEwen'),
('Sergio Capparelli'),
('Sophie Gonzales'),
('Startup da Real'),
('Stephen King'),
('Taylor Jenkins Reid'),
('Thomas Sowell'),
('Trajano Vieira'),
('Vera Lúcia Marinzeck de Carvalho'),
('Victoria Mendes'),
('Vitor Martins'),
('Vladimir Ilitch Lênin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `genero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`genero`) VALUES
('Autoajuda'),
('Aventura'),
('Biografia'),
('Ciência Política e Ciências Sociais'),
('Ciências Sociais'),
('Comédia romântica'),
('Contos'),
('Crime real'),
('Crônica'),
('Drama'),
('Fantasia'),
('Ficção'),
('Ficção científica'),
('Ficção distópica'),
('Ficção gótica'),
('Ficção histórica'),
('Ficção LGBTQIA+'),
('Ficção policial'),
('Ficção supernatural'),
('História'),
('Horror'),
('Humor'),
('Literatura Estrangeira'),
('Literatura fantástica'),
('Mistério'),
('Não-Ficção'),
('Novela'),
('Psicologia'),
('Romance'),
('Romance cristão'),
('Romance epistolar'),
('Romance psicológico'),
('Suspense'),
('Terror'),
('Terror psicológico'),
('Thriller');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `Titulo` varchar(200) NOT NULL,
  `Autor` varchar(200) NOT NULL,
  `Ano` year(4) NOT NULL,
  `genero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`Titulo`, `Autor`, `Ano`, `genero`) VALUES
('Garota A', 'Abigail Dean', 2021, 'Biografia'),
('Heartstopper I: Dois Garotos, Um Encontro', 'Alice Oseman', 2021, 'Ficção LGBTQIA+'),
('Heartstopper II: Minha Pessoa Favorita', 'Alice Oseman', 2021, 'Ficção LGBTQIA+'),
('A Estratégia do Charme', 'Alison Cochrun', 2022, 'Ficção LGBTQIA+'),
('Entre linhas, estrelas e segredos', 'Ana C. Alves', 2022, 'Ficção LGBTQIA+'),
('Anatomia de uma Revolução', 'António Barreto', 1987, 'Ficção científica'),
('Anatomia de uma Revolução', 'António Barreto', 1987, 'Ficção científica'),
('Anatomia de uma Revolução', 'António Barreto', 1987, 'Ficção científica'),
('Delilah Green não está nem aí', 'Ashley Herring Blake', 2022, 'Ficção LGBTQIA+'),
('Com Sangue', 'AStephen King', 2020, 'Terror'),
('Amor em Cores', 'Bolu Babalola', 2022, 'Contos'),
('A temperatura entre você e eu', 'Brian Zepka', 2022, 'Ficção LGBTQIA+'),
('Choque de Cultura: 79 Filmes para Assistir Enquanto Dirige', 'Caíto Mainier', 2018, 'Humor'),
('Eu Beijei Shara Wheeler', 'Casey McQuiston', 2022, 'Ficção LGBTQIA+'),
('Conectadas', 'Clara Alves', 2019, 'Ficção LGBTQIA+'),
('Antes que você diga sim', 'Clare Lydon', 2021, 'Ficção LGBTQIA+'),
('É Assim que Começa', 'Colleen Hoover', 2022, 'Ficção'),
('Blackout', 'Dhonielle Clayton', 2021, 'Romance'),
('Entre as folhas das árvores', 'DjiEm', 2022, 'Ficção LGBTQIA+'),
('De Férias Com Você', 'Emily Henry', 2022, 'Romance'),
('Cidade dos Vilões', 'Estelle Laure', 2021, 'Mistério'),
('As Cinco Linguagens do Amor', 'Gary Chapman', 1992, 'Psicologia'),
('Algo a Mais', 'Isabel Meziat', 2022, 'Ficção LGBTQIA+'),
('Bauman: uma Biografia', 'Izabela Wagner', 2020, 'Biografia'),
('A Casa De Doces', 'Jennifer Egan', 2022, 'Ficção científica'),
('As Cores do Amor', 'Jessica Batista', 2021, 'Ficção LGBTQIA+'),
('Classe 309', 'Jessica Batista', 2020, 'Ficção LGBTQIA+'),
('A Mesa dos Jogadores ', 'Jessica Goodman	', 2022, 'Thriller'),
('Classificados da Corte', 'João Victor Pires', 2021, 'História'),
('A Caverna', 'José Saramago', 2000, 'Romance'),
('Ensaio Sobre a Lucidez', 'José Saramago', 2004, 'Ficção'),
('Felix Para Sempre', 'Kacen Callender', 2021, 'Romance'),
('A Jogada do Amor', 'Kelly Quindlen', 2022, 'Comédia romântica'),
('Etereos – o Despertar', 'Lília Uzêda', 2014, 'Romance'),
('Bubble Gum', 'Lolita Pille', 2004, 'Ficção'),
('Franz Kafka: o Mundo Prodigioso que Tenho Na Cabeça', 'Louis Begley', 2008, 'Romance'),
('A Conspiração do Graal', 'Lynn Sholes', 2005, 'Romance'),
('Elizabeth I: o Anoitecer de um Reinado', 'Margaret George', 2012, 'Romance'),
('Emma, Cobra e a Garota de Outra Dimensão', 'Maria Freitas', 2021, 'Fantasia'),
('Aprenda a Ser Otimista', 'Martin E. P. Seligman', 2019, 'Autoajuda'),
('Desbloqueie o Poder da Sua Mente', 'Michael Arruda', 2018, 'Autoajuda'),
('Aprenda a Viver o Agora', 'Monja Coen', 2019, 'Autoajuda'),
('Diário de um Amnésico', 'Nathalie Somers', 2021, 'Mistério'),
('Azedo', 'Nina Melga', 2022, ''),
('A Era dos Direitos', 'Norberto Bobbio', 2004, 'Ciência Política e Ciências Sociais'),
('Dora Bruder', 'Patrick Modiano', 1997, 'Biografia'),
('Enquanto Eu Não Te Encontro', 'Pedro Rhuas', 2021, 'Ficção LGBTQIA+'),
('Dezesseis', 'Rachel Vincent', 2017, 'Ficção científica'),
('Garotas (im)perfeitas', 'Raíssa Selvaticci', 2022, 'Ficção LGBTQIA+'),
('As vantagens de ser você', 'Ray Tavares', 2022, 'Ficção LGBTQIA+'),
('A Arte da Sedução: Edição Concisa', 'Robert Greene', 2012, 'Autoajuda'),
('Fica Entre Nós', 'Sophie Gonzales', 2022, 'Romance'),
('Este Livro Não Vai Te Deixar Rico', 'Startup da Real', 2019, 'Autoajuda'),
('A Auto-Estrada', 'Stephen King', 1981, 'Suspense'),
('A Dança da Morte', 'Stephen King', 1978, 'Horror'),
('A Garota Que Adorava Tom Gordon', 'Stephen King', 1999, 'Novela'),
('A Hora do Lobisomem', 'Stephen King', 1983, 'Terror'),
('A Incendiária', 'Stephen King', 1980, 'Terror'),
('A Longa Marcha', 'Stephen King', 1979, 'Romance'),
('A Maldição', 'Stephen King', 1984, 'Terror'),
('A Maldição do Cigano', 'Stephen King', 1984, 'Ficção'),
('A Metade Negra', 'Stephen King', 1989, ''),
('A Metade Sombria', 'Stephen King', 1989, 'Terror'),
('A Pequena Caixa de Gwendy', 'Stephen King', 2017, 'Terror'),
('A Planta', 'Stephen King', 1982, 'Terror'),
('Achados e Perdidos', 'Stephen King', 2016, 'Suspense'),
('Angústia', 'Stephen King', 1987, 'Terror'),
('Ao Cair da Noite', 'Stephen King', 2008, 'Suspense'),
('Ascensão', 'Stephen King', 2018, 'Suspense'),
('Belas adormecidas', 'Stephen King', 2017, 'Literatura fantástica'),
('Billy Summers', 'Stephen King', 2021, 'Ficção policial'),
('Blaze', 'Stephen King', 2007, 'Ficção policial'),
('Buick 8', 'Stephen King', 2002, 'Romance'),
('Cão Raivoso', 'Stephen King', 1981, 'Terror psicológico'),
('Carrie, a estranha', 'Stephen King', 1974, 'Terror'),
('Celular', 'Stephen King', 2014, 'Ficção supernatural'),
('Christine', 'Stephen King', 1983, 'Suspense'),
('Corações na Atlântida', 'Stephen King', 1999, '\r\nDrama'),
('Dança Macabra', 'Stephen King', 1981, 'Literatura fantástica'),
('Depois', 'Stephen King', 2021, 'Suspense'),
('Depois da Meia-Noite', 'Stephen King', 1990, 'Ficção supernatural'),
('Desespero', 'Stephen King', 1996, 'Terror'),
('Duma Key', 'Stephen King', 2008, 'Romance'),
('Escuridão Total Sem Estrelas', 'Stephen King', 2010, 'Terror'),
('A Mansão da Pedra Torta', 'Vera Lúcia Marinzeck de Carvalho', 2015, 'Novela'),
('Heartstaker', 'Victoria Mendes', 2022, 'Ficção LGBTQIA+'),
('Escrito em Algum Lugar', 'Vitor Martins', 2022, 'Ficção LGBTQIA+'),
('Heartstopper III: Um Passo Adiante', 'Alice Oseman', 2022, 'Ficção LGBTQIA+'),
('Heartstopper IV: De Mãos Dadas', 'Alice Oseman', 2022, 'Ficção LGBTQIA+'),
('Hhhh', 'Laurent Binet', 2010, 'Ficção histórica'),
('Imersão', 'Diogo Lara', 2018, 'Terror'),
('Insônia', 'Stephen King', 1994, 'Literatura fantástica'),
('It – A Coisa', 'Stephen King', 1986, 'Terror'),
('Jogo Perigoso', 'Stephen King', 1992, 'Terror psicológico'),
('Joyland', 'Stephen King', 2013, 'Ficção policial'),
('Love – A História De Lisey', 'Stephen King', 2006, 'Literatura fantástica'),
('Me Chame Pelo Seu Nome', 'André Aciman', 2007, 'Ficção LGBTQIA+'),
('Meu Lugar Ao Sol', 'Leah Johnson', 2022, 'Ficção LGBTQIA+'),
('Milha 81', 'Stephen King', 2011, 'Novela'),
('Mundos Roubados', 'Lloyd Jones', 2012, 'Romance'),
('No Silêncio do Mar', 'Juliana Dantas', 2019, 'Drama'),
('Novembro De 63', 'Stephen King', 2011, 'Ficção científica'),
('Nunca Diga Adeus', 'Doug Magee', 2011, 'Suspense'),
('O Alienista', 'Caleb Carr', 1994, 'Mistério'),
('O Amor Não é Óbvio', 'Elayne Baeta', 2019, 'Ficção LGBTQIA+'),
('O Apanhador de Sonhos', 'Stephen King', 2001, 'Ficção científica'),
('O Bazar dos Sonhos Ruins', 'Stephen King', 2015, 'Suspense'),
('O Brasil na fita', 'Ricardo Molina', 2016, 'Ficção científica'),
('O Carrasco de Hitler', 'Robert Gerwarth', 2015, 'Biografia'),
('O Caso de Dreyfus', 'Louis Begley', 2009, 'Crime real'),
('O Cemitério', 'Stephen King', 1983, 'Terror'),
('O Concorrente', 'Stephen King', 1982, 'Ficção distópica'),
('O Diário de Anne Frank', 'Anne Frank', 1947, 'História'),
('O Evangelho Segundo Jesus Cristo', 'José Saramago', 1991, 'Romance'),
('O Estado e a Revolução', 'Vladimir Ilitch Lênin', 1918, 'Não ficção'),
('O Gato que Conhecia Shakespeare', 'Lilian Jackson Braun', 2007, 'Mistério'),
('O Gato que Falava Com Fantasmas', 'Lilian Jackson Braun', 1995, 'Literatura Estrangeira'),
('O Instituto', 'Stephen King', 2019, 'Ficção científica'),
('O Legado de Chandler', 'Abdi Nazemian', 2022, 'Ficção LGBTQIA+'),
('O Livro de Contos Nonsense', 'Evandson Sousa', 2019, 'Contos'),
('O Livro Selvagem', 'Juan Villoro', 2008, 'Aventura'),
('O Melhor de Você', 'Mia Sheridan', 2017, 'Romance'),
('O Nevoeiro', 'Stephen King', 2008, 'Ficção científica'),
('O Olho do Tsar Vermelho', 'Sam Eastland', 2010, 'Mistério'),
('O Segredo do Oceano', 'Natasha Bowen', 2021, 'Fantasia'),
('O Talismã', 'Stephen King', 1984, 'Literatura fantástica'),
('Os Estranhos', 'Stephen King', 1987, 'Ficção científica'),
('Os Intelectuais e a Sociedade', 'Thomas Sowell', 2009, 'Biografia'),
('Os Justiceiros', 'Stephen King', 1996, 'Ficção científica'),
('Os Olhos Do Dragão', 'Stephen King', 1984, 'Literatura fantástica'),
('Os Pioneiros Adventistas: a História da Igreja Adventista para Crianças', 'Fabrício de Andrade Felício', 2020, 'Biografia'),
('Os Sete Enforcados', 'Leonid Andreiev', 1908, 'Terror psicológico'),
('Os Sete Maridos de Evelyn Hugo', 'Taylor Jenkins Reid', 2017, 'Ficção LGBTQIA+'),
('Outsider', 'Stephen King', 2018, 'Ficção policial'),
('Presságios do amor', 'Alexandria Bellefleur', 2022, 'Ficção LGBTQIA+'),
('Prospere Lendo a Biblia: Fique Rico Com Deus', 'Jb Campos', 2014, 'Autoajuda'),
('Quatro Estações', 'Stephen King', 1982, 'Ficção científica'),
('Queda Livre	', 'Lois McMaster Bujold', 1988, 'Ficção científica'),
('Quem Traiu Anne Frank?', 'Rosemary Sullivan', 2022, 'História'),
('Querida Penelope', 'Arquelana', 2022, 'Ficção LGBTQIA+'),
('Racismo Linguístico', 'Gabriel Nascimento', 2019, 'Ciências Sociais'),
('Revival', 'Stephen King', 2014, 'Romance'),
('Romance Real', 'Clara Alves', 2022, 'Ficção LGBTQIA+'),
('Rose Madder', 'Stephen King', 1995, 'Romance psicológico'),
('Saboroso Cadáver', 'Agustina Bazterrica', 2017, 'Ficção'),
('Saco de Ossos', 'Stephen King', 1998, 'Ficção gótica'),
('Salem', 'Stephen King', 1975, 'Terror'),
('Sinhá-Moça', 'Maria Dezonne Pacheco Fernandes', 1950, 'Ficção histórica'),
('Sissi', 'Allison Pataki', 2016, 'Romance'),
('Sniper de Elite: América Sitiada', 'Scott McEwen', 2014, 'Suspense'),
('Só a Gente Sabe o que Sente	', 'Frederico Elboni', 2022, 'Crônica'),
('Sob a Redoma', 'Stephen King', 2000, 'Ficção científica'),
('Sob o Céu de Vagalumes', 'Victoria Mendes', 2020, 'Ficção LGBTQIA+'),
('Sobre a Escrita', 'Stephen King', 2000, 'Não-Ficção'),
('Sombras da Noite', 'Stephen King', 1978, 'Suspense'),
('Stephen King, a Biografia: Coração Assombrado', 'Stephen King', 2015, 'Biografia'),
('Todos Os Nomes', 'José Saramago', 1997, 'Romance'),
('Tripulação De Esqueletos', 'Stephen King', 1985, 'Ficção científica'),
('Trocas Macabras	', 'Stephen King', 1991, 'Suspense'),
('Tudo é Eventual', 'Stephen King', 1979, 'Terror'),
('Última Parada', 'Casey McQuiston', 2021, 'Ficção LGBTQIA+'),
('Um Milhão de Finais Felizes	', 'Vitor Martins', 2018, 'Ficção LGBTQIA+'),
('Um Projeto de Democracia', 'David Graeber', 2016, 'Ciência Política e Ciências Sociais'),
('Um Retrato do Artista Quando Jovem', 'James Joyce', 1916, 'Biografia'),
('Uma Farsa de Amor Na Espanha', 'Elena Armas', 2022, 'Romance'),
('Uma Lição Inesquecível', 'Laura Schroff', 2020, 'Biografia'),
('Vermelho, Branco e Sangue Azul	', 'Casey McQuiston	', 2019, 'Ficção LGBTQIA+'),
('Viagem à Calábria', 'Sergio Capparelli	', 2014, 'Romance'),
('W: Valéria e Valentina	', 'Isaac Rosa	', 2021, 'Mistério'),
('Xisto No Espaço', 'Lúcia Machado de Almeida', 2000, 'Ficção científica'),
('Zona Morta', 'Stephen King', 1979, 'Terror'),
('Heartstopper III: Um Passo Adiante', 'Alice Oseman', 2022, 'Ficção LGBTQIA+'),
('Heartstopper IV: De Mãos Dadas', 'Alice Oseman', 2022, 'Ficção LGBTQIA+'),
('Hhhh', 'Laurent Binet', 2010, 'Ficção histórica'),
('Imersão', 'Diogo Lara', 2018, 'Terror'),
('Insônia', 'Stephen King', 1994, 'Literatura fantástica'),
('It – A Coisa', 'Stephen King', 1986, 'Terror'),
('Jogo Perigoso', 'Stephen King', 1992, 'Terror psicológico'),
('Joyland', 'Stephen King', 2013, 'Ficção policial'),
('Love – A História De Lisey', 'Stephen King', 2006, 'Literatura fantástica'),
('Me Chame Pelo Seu Nome', 'André Aciman', 2007, 'Ficção LGBTQIA+'),
('Meu Lugar Ao Sol', 'Leah Johnson', 2022, 'Ficção LGBTQIA+'),
('Milha 81', 'Stephen King', 2011, 'Novela'),
('Mundos Roubados', 'Lloyd Jones', 2012, 'Romance'),
('No Silêncio do Mar', 'Juliana Dantas', 2019, 'Drama'),
('Novembro De 63', 'Stephen King', 2011, 'Ficção científica'),
('Nunca Diga Adeus', 'Doug Magee', 2011, 'Suspense'),
('O Alienista', 'Caleb Carr', 1994, 'Mistério'),
('O Amor Não é Óbvio', 'Elayne Baeta', 2019, 'Ficção LGBTQIA+'),
('O Apanhador de Sonhos', 'Stephen King', 2001, 'Ficção científica'),
('O Bazar dos Sonhos Ruins', 'Stephen King', 2015, 'Suspense'),
('O Brasil na fita', 'Ricardo Molina', 2016, 'Ficção científica'),
('O Carrasco de Hitler', 'Robert Gerwarth', 2015, 'Biografia'),
('O Caso de Dreyfus', 'Louis Begley', 2009, 'Crime real'),
('O Cemitério', 'Stephen King', 1983, 'Terror'),
('O Concorrente', 'Stephen King', 1982, 'Ficção distópica'),
('O Diário de Anne Frank', 'Anne Frank', 1947, 'História'),
('O Evangelho Segundo Jesus Cristo', 'José Saramago', 1991, 'Romance'),
('O Estado e a Revolução', 'Vladimir Ilitch Lênin', 1918, 'Não ficção'),
('O Gato que Conhecia Shakespeare', 'Lilian Jackson Braun', 2007, 'Mistério'),
('O Gato que Falava Com Fantasmas', 'Lilian Jackson Braun', 1995, 'Literatura Estrangeira'),
('O Instituto', 'Stephen King', 2019, 'Ficção científica'),
('O Legado de Chandler', 'Abdi Nazemian', 2022, 'Ficção LGBTQIA+'),
('O Livro de Contos Nonsense', 'Evandson Sousa', 2019, 'Contos'),
('O Livro Selvagem', 'Juan Villoro', 2008, 'Aventura'),
('O Melhor de Você', 'Mia Sheridan', 2017, 'Romance'),
('O Nevoeiro', 'Stephen King', 2008, 'Ficção científica'),
('O Olho do Tsar Vermelho', 'Sam Eastland', 2010, 'Mistério'),
('O Segredo do Oceano', 'Natasha Bowen', 2021, 'Fantasia'),
('O Talismã', 'Stephen King', 1984, 'Literatura fantástica'),
('Os Estranhos', 'Stephen King', 1987, 'Ficção científica'),
('Os Intelectuais e a Sociedade', 'Thomas Sowell', 2009, 'Biografia'),
('Os Justiceiros', 'Stephen King', 1996, 'Ficção científica'),
('Os Olhos Do Dragão', 'Stephen King', 1984, 'Literatura fantástica'),
('Os Pioneiros Adventistas: a História da Igreja Adventista para Crianças', 'Fabrício de Andrade Felício', 2020, 'Biografia'),
('Os Sete Enforcados', 'Leonid Andreiev', 1908, 'Terror psicológico'),
('Os Sete Maridos de Evelyn Hugo', 'Taylor Jenkins Reid', 2017, 'Ficção LGBTQIA+'),
('Outsider', 'Stephen King', 2018, 'Ficção policial'),
('Presságios do amor', 'Alexandria Bellefleur', 2022, 'Ficção LGBTQIA+'),
('Prospere Lendo a Biblia: Fique Rico Com Deus', 'Jb Campos', 2014, 'Autoajuda'),
('Quatro Estações', 'Stephen King', 1982, 'Ficção científica'),
('Queda Livre	', 'Lois McMaster Bujold', 1988, 'Ficção científica'),
('Quem Traiu Anne Frank?', 'Rosemary Sullivan', 2022, 'História'),
('Querida Penelope', 'Arquelana', 2022, 'Ficção LGBTQIA+'),
('Racismo Linguístico', 'Gabriel Nascimento', 2019, 'Ciências Sociais'),
('Revival', 'Stephen King', 2014, 'Romance'),
('Romance Real', 'Clara Alves', 2022, 'Ficção LGBTQIA+'),
('Rose Madder', 'Stephen King', 1995, 'Romance psicológico'),
('Saboroso Cadáver', 'Agustina Bazterrica', 2017, 'Ficção'),
('Saco de Ossos', 'Stephen King', 1998, 'Ficção gótica'),
('Salem', 'Stephen King', 1975, 'Terror'),
('Sinhá-Moça', 'Maria Dezonne Pacheco Fernandes', 1950, 'Ficção histórica'),
('Sissi', 'Allison Pataki', 2016, 'Romance'),
('Sniper de Elite: América Sitiada', 'Scott McEwen', 2014, 'Suspense'),
('Só a Gente Sabe o que Sente	', 'Frederico Elboni', 2022, 'Crônica'),
('Sob a Redoma', 'Stephen King', 2000, 'Ficção científica'),
('Sob o Céu de Vagalumes', 'Victoria Mendes', 2020, 'Ficção LGBTQIA+'),
('Sobre a Escrita', 'Stephen King', 2000, 'Não-Ficção'),
('Sombras da Noite', 'Stephen King', 1978, 'Suspense'),
('Stephen King, a Biografia: Coração Assombrado', 'Stephen King', 2015, 'Biografia'),
('Todos Os Nomes', 'José Saramago', 1997, 'Romance'),
('Tripulação De Esqueletos', 'Stephen King', 1985, 'Ficção científica'),
('Trocas Macabras	', 'Stephen King', 1991, 'Suspense'),
('Tudo é Eventual', 'Stephen King', 1979, 'Terror'),
('Última Parada', 'Casey McQuiston', 2021, 'Ficção LGBTQIA+'),
('Um Milhão de Finais Felizes	', 'Vitor Martins', 2018, 'Ficção LGBTQIA+'),
('Um Projeto de Democracia', 'David Graeber', 2016, 'Ciência Política e Ciências Sociais'),
('Um Retrato do Artista Quando Jovem', 'James Joyce', 1916, 'Biografia'),
('Uma Farsa de Amor Na Espanha', 'Elena Armas', 2022, 'Romance'),
('Uma Lição Inesquecível', 'Laura Schroff', 2020, 'Biografia'),
('Vermelho, Branco e Sangue Azul	', 'Casey McQuiston	', 2019, 'Ficção LGBTQIA+'),
('Viagem à Calábria', 'Sergio Capparelli	', 2014, 'Romance'),
('W: Valéria e Valentina	', 'Isaac Rosa	', 2021, 'Mistério'),
('Xisto No Espaço', 'Lúcia Machado de Almeida', 2000, 'Ficção científica'),
('Zona Morta', 'Stephen King', 1979, 'Terror');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Email`, `Senha`) VALUES
(1, 'jhdsjdkf@gmail.com', '555');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`Autor`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`genero`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `usuario` (`idUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
