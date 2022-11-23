-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Nov-2022 às 13:54
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.15

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
  `idAutor` int(11) NOT NULL,
  `Nome` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`idAutor`, `Nome`) VALUES
(1, 'Abdi Nazemian'),
(2, 'Abigail Dean'),
(3, 'Agustina Bazterrica'),
(4, 'Alexandria Bellefleur'),
(5, 'Alice Oseman'),
(6, 'Alison Cochrun'),
(7, 'Allison Pataki'),
(8, 'Ana C. Alves'),
(9, 'André Aciman'),
(10, 'Anne Frank'),
(11, 'António Barreto'),
(12, 'Arquelana'),
(13, 'Ashley Herring Blake'),
(14, 'Bolu Babalola'),
(15, 'Brian Zepka'),
(16, 'Caíto Mainier'),
(17, 'Caleb Carr'),
(18, 'Casey McQuiston'),
(19, 'Clara Alves'),
(20, 'Clare Lydon'),
(21, 'Colleen Hoover'),
(22, 'Daniel Takata Gomes'),
(23, 'David Graeber'),
(24, 'Dhonielle Clayton'),
(25, 'Diogo Lara'),
(26, 'DjiEm'),
(27, 'Doug Magee'),
(28, 'Doug Stanton'),
(29, 'Elayne Baeta'),
(30, 'Elena Armas'),
(31, 'Emily Henry'),
(32, 'Estelle Laure'),
(33, 'Evandson Sousa'),
(34, 'Fabrício de Andrade Felício'),
(35, 'Frederico Elboni'),
(36, 'Gabriel Nascimento'),
(37, 'Gary Chapman'),
(38, 'Isaac Rosa'),
(39, 'Isabel Meziat'),
(40, 'Izabela Wagner'),
(41, 'James Joyce'),
(42, 'Jb Campos'),
(43, 'Jennifer Egan'),
(44, 'Jessica Batista'),
(45, 'Jessica Goodman'),
(46, 'João Victor Pires'),
(47, 'José Saramago'),
(48, 'Juan Villoro'),
(49, 'Juliana Dantas'),
(50, 'Kacen Callender'),
(51, 'Kelly Quindlen'),
(52, 'Laura Schroff'),
(53, 'Laurent Binet'),
(54, 'Leah Johnson'),
(55, 'Leonid Andreiev'),
(56, 'Lília Uzêda'),
(57, 'Lilian Jackson Braun'),
(58, 'Lima Barreto'),
(59, 'Lloyd Jones'),
(60, 'Lois McMaster Bujold'),
(61, 'Lolita Pille'),
(62, 'Louis Begley'),
(63, 'Lúcia Machado de Almeida'),
(64, 'Lynn Sholes'),
(65, 'Margaret George'),
(66, 'Maria Dezonne Pacheco Fernandes'),
(67, 'Maria Freitas'),
(68, 'Martin E. P. Seligman'),
(69, 'Mia Sheridan'),
(70, 'Michael Arruda'),
(71, 'Monja Coen'),
(72, 'Natasha Bowen'),
(73, 'Nathalie Somers'),
(74, 'Nina Melga'),
(75, 'Norberto Bobbio'),
(76, 'Patrick Modiano'),
(77, 'Pedro Rhuas'),
(78, 'Rachel Vincent'),
(79, 'Raíssa Selvaticci'),
(80, 'Ray Tavares'),
(81, 'Ricardo Molina'),
(82, 'Robbie Couch'),
(83, 'Robert Gerwarth'),
(84, 'Robert Greene'),
(85, 'Rosemary Sullivan'),
(86, 'Sam Eastland'),
(87, 'Scott McEwen'),
(88, 'Sergio Capparelli'),
(89, 'Sophie Gonzales'),
(90, 'Startup da Real'),
(91, 'Stephen King'),
(92, 'Taylor Jenkins Reid'),
(93, 'Thomas Sowell'),
(94, 'Trajano Vieira'),
(95, 'Vera Lúcia Marinzeck de Carvalho'),
(96, 'Victoria Mendes'),
(97, 'Vitor Martins'),
(98, 'Vladimir Ilitch Lênin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `titulo` varchar(200) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `ano` int(4) NOT NULL,
  `idlivro` int(11) NOT NULL,
  `idautor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`titulo`, `genero`, `ano`, `idlivro`, `idautor`) VALUES
('A Arte da Sedução: Edição Concisa', 'Autoajuda', 2012, 1, 84),
('A Auto-Estrada', 'Suspense', 1981, 2, 91),
('A Casa De Doces', 'Ficção científica', 2022, 3, 43),
('A Caverna', 'Romance', 2000, 4, 47),
('A Conspiração do Graal', 'Romance', 2005, 5, 64),
('A Dança da Morte', 'Horror', 1978, 6, 91),
('A Era dos Direitos', 'Ciência Política e Ciências Sociais', 2004, 7, 75),
('A Estratégia do Charme', 'Ficção LGBTQIA+', 2022, 8, 6),
('A Garota Que Adorava Tom Gordon', 'Novela', 1999, 9, 91),
('A Hora do Lobisomem', 'Terror', 1983, 10, 91),
('A Incendiária', 'Terror', 1980, 11, 91),
('A Jogada do Amor', 'Comédia romântica', 2022, 12, 51),
('A Longa Marcha', 'Romance', 1979, 13, 91),
('A Maldição', 'Terror', 1984, 14, 91),
('A Maldição do Cigano', 'Ficção', 1984, 15, 91),
('A Mansão da Pedra Torta', 'Novela', 2015, 16, 95),
('A Mesa dos Jogadores ', 'Thriller', 2022, 17, 45),
('A Metade Negra', 'Terror', 1989, 18, 91),
('A Metade Sombria', 'Terror', 1989, 19, 91),
('A Pequena Caixa de Gwendy', 'Terror', 2017, 20, 91),
('A Planta', 'Terror', 1982, 21, 91),
('A temperatura entre você e eu', 'Ficção LGBTQIA+', 2022, 22, 15),
('Achados e Perdidos', 'Suspense', 2016, 23, 91),
('Algo a Mais', 'Ficção LGBTQIA+', 2022, 24, 39),
('Amor em Cores', 'Contos', 2022, 25, 14),
('Anatomia de uma Revolução', 'Ficção científica', 1987, 26, 11),
('Angústia', 'Terror', 1987, 27, 91),
('Antes que você diga sim', 'Ficção LGBTQIA+', 2021, 28, 20),
('Ao Cair da Noite', 'Suspense', 2008, 29, 91),
('Aprenda a Ser Otimista', 'Autoajuda', 2019, 30, 68),
('Aprenda a Viver o Agora', 'Autoajuda', 2019, 31, 71),
('As Cinco Linguagens do Amor', 'Psicologia', 1992, 32, 37),
('As Cores do Amor', 'Ficção LGBTQIA+', 2021, 33, 44),
('As vantagens de ser você', 'Ficção LGBTQIA+', 2022, 34, 80),
('Ascensão', 'Suspense', 2018, 35, 91),
('Azedo', 'Ficção LGBTQIA+', 2022, 36, 74),
('Bauman: uma Biografia', 'Biografia', 2020, 37, 40),
('Belas adormecidas', 'Literatura fantástica', 2017, 38, 91),
('Billy Summers', 'Ficção policial', 2021, 39, 91),
('Blackout', 'Romance', 2021, 40, 24),
('Blaze', 'Ficção policial', 2007, 41, 91),
('Box Lima Barreto: Obra Reunida', 'Ficção', 0, 42, 58),
('Bubble Gum', 'Ficção', 2004, 43, 61),
('Buick 8', 'Romance', 2002, 44, 91),
('Cão Raivoso', 'Terror psicológico', 1981, 45, 91),
('Carrie, a estranha', 'Romance epistolar', 1974, 46, 91),
('Celular', 'Ficção supernatural', 2014, 47, 91),
('Choque de Cultura: 79 Filmes para Assistir Enquanto Dirige', 'Humor', 2018, 48, 16),
('Christine', 'Suspense', 1983, 49, 91),
('Cidade dos Vilões', 'Mistério', 2021, 50, 32),
('Classe 309', 'Ficção LGBTQIA+', 2020, 51, 44),
('Classificados da Corte', 'História', 2021, 52, 46),
('Com Sangue', 'Terror', 2020, 53, 91),
('Conectadas', 'Ficção LGBTQIA+', 2019, 54, 19),
('Corações na Atlântida', 'Drama', 1999, 55, 91),
('Dança Macabra', 'Literatura fantástica', 1981, 56, 91),
('De Férias Com Você', 'Romance', 2022, 57, 31),
('Delilah Green não está nem aí', 'Ficção LGBTQIA+', 2022, 58, 13),
('Depois', 'Suspense', 2021, 59, 91),
('Depois da Meia-Noite', 'Ficção supernatural', 1990, 60, 91),
('Desbloqueie o Poder da Sua Mente', 'Autoajuda', 2018, 61, 70),
('Desespero', 'Terror', 1996, 62, 91),
('Dezesseis', 'Ficção científica', 2017, 63, 78),
('Diário de um Amnésico', 'Mistério', 2021, 64, 73),
('Dora Bruder', 'Biografia', 1997, 65, 76),
('Duma Key', 'Romance', 2008, 66, 91),
('É Assim que Começa', 'Ficção', 2022, 67, 21),
('Elizabeth I: o Anoitecer de um Reinado', 'Romance', 2012, 68, 65),
('Emma, Cobra e a Garota de Outra Dimensão', 'Fantasia', 2021, 69, 67),
('Enquanto Eu Não Te Encontro', 'Ficção LGBTQIA+', 2021, 70, 77),
('Ensaio Sobre a Lucidez', 'Ficção', 2004, 71, 47),
('Entre as folhas das árvores', 'Ficção LGBTQIA+', 2022, 72, 26),
('Entre linhas, estrelas e segredos', 'Ficção LGBTQIA+', 2022, 73, 8),
('Escrito em Algum Lugar', 'Ficção LGBTQIA+', 2022, 74, 97),
('Escuridão Total Sem Estrelas', 'Terror', 2010, 75, 91),
('Este Livro Não Vai Te Deixar Rico', 'Autoajuda', 2019, 76, 90),
('Etereos – o Despertar', 'Romance', 2014, 77, 56),
('Eu Beijei Shara Wheeler', 'Ficção LGBTQIA+', 2022, 78, 18),
('Felix Para Sempre', 'Ficção LGBTQIA+', 2021, 79, 50),
('Fica Entre Nós', 'Ficção LGBTQIA+', 2022, 80, 89),
('Franz Kafka: o Mundo Prodigioso que Tenho Na Cabeça', 'Biografia', 2008, 81, 62),
('Garota A', 'Suspense', 2021, 82, 2),
('Garotas (im)perfeitas', 'Ficção LGBTQIA+', 2022, 83, 79),
('Heartstaker', 'Ficção LGBTQIA+', 2022, 84, 96),
('Heartstopper I: Dois Garotos, Um Encontro', 'Ficção LGBTQIA+', 2021, 85, 5),
('Heartstopper II: Minha Pessoa Favorita', 'Ficção LGBTQIA+', 2021, 86, 5),
('Heartstopper III: Um Passo Adiante', 'Ficção LGBTQIA+', 2022, 87, 5),
('Heartstopper IV: De Mãos Dadas', 'Ficção LGBTQIA+', 2022, 88, 5),
('Hhhh', 'Ficção histórica', 2010, 89, 53),
('Imersão', 'Terror', 2018, 90, 25),
('Insônia', 'Literatura fantástica', 1994, 91, 91),
('It – A Coisa', 'Terror', 1986, 92, 91),
('Jogo Perigoso', 'Terror psicológico', 1992, 93, 91),
('Joyland', 'Ficção policial', 2013, 94, 91),
('Love – A História De Lisey', 'Literatura fantástica', 2006, 95, 91),
('Me Chame Pelo Seu Nome', 'Ficção LGBTQIA+', 2007, 96, 9),
('Meu Lugar Ao Sol', 'Ficção LGBTQIA+', 2022, 97, 54),
('Milha 81', 'Novela', 2011, 98, 91),
('Mundos Roubados', 'Romance', 2012, 99, 59),
('No Silêncio do Mar', 'Drama', 2019, 100, 49),
('Novembro De 63', 'Ficção científica', 2011, 101, 91),
('Nunca Diga Adeus', 'Suspense', 2011, 102, 27),
('O Alienista', 'Mistério', 1994, 103, 17),
('O Amor Não é Óbvio', 'Ficção LGBTQIA+', 2019, 104, 29),
('O Apanhador de Sonhos', 'Ficção científica', 2001, 105, 91),
('O Azul Daqui é Mais Azul', 'Ficção LGBTQIA+', 2022, 106, 82),
('O Bazar dos Sonhos Ruins', 'Suspense', 2015, 107, 91),
('O Brasil na fita', 'Ficção científica', 2016, 108, 81),
('O Carrasco de Hitler', 'Biografia', 2015, 109, 83),
('O Caso de Dreyfus', 'Crime real', 2009, 110, 62),
('O Cemitério	', 'Terror', 1983, 111, 91),
('O Concorrente', 'Ficção distópica', 1982, 112, 91),
('O Diário de Anne Frank', 'História', 1947, 113, 10),
('O Estado e a Revolução', 'Não ficção', 1918, 114, 98),
('O Gato que Conhecia Shakespeare', 'Mistério', 2007, 115, 57),
('O Gato que Falava Com Fantasmas', 'Literatura Estrangeira', 1995, 116, 57),
('O Instituto', 'Ficção científica', 2019, 117, 91),
('O Legado de Chandler', 'Ficção LGBTQIA+', 2022, 118, 1),
('O Livro de Contos Nonsense', 'Contos', 2019, 119, 33),
('O Livro Selvagem', 'Aventura', 2008, 120, 48),
('O Melhor de Você', 'Romance', 2017, 121, 69),
('O Nevoeiro', 'Ficção científica', 2008, 122, 91),
('O Olho do Tsar Vermelho', 'Mistério', 2010, 123, 86),
('O Segredo do Oceano', 'Fantasia', 2021, 124, 72),
('O Talismã', 'Literatura fantástica', 1984, 125, 91),
('Os Estranhos', 'Ficção científica', 1987, 126, 91),
('Os Intelectuais e a Sociedade', 'Biografia', 2009, 127, 93),
('Os Justiceiros', 'Ficção científica', 1996, 128, 91),
('Os Olhos Do Dragão', 'Literatura fantástica', 1984, 129, 91),
('Os Sete Enforcados', 'Terror psicológico', 1908, 130, 55),
('Os Sete Maridos de Evelyn Hugo', 'Ficção LGBTQIA+', 2017, 131, 92),
('Outsider', 'Ficção policial', 2018, 132, 91),
('Poliana Okimoto', 'Biografia', 2017, 133, 22),
('Presságios do amor', 'Ficção LGBTQIA+', 2022, 134, 4),
('Quatro Estações', 'Ficção científica', 1982, 135, 91),
('Queda Livre', 'Ficção científica', 1988, 136, 60),
('Quem Traiu Anne Frank?', 'História', 2022, 137, 85),
('Querida Penelope', 'Ficção LGBTQIA+', 2022, 138, 12),
('Racismo Linguístico', 'Ciências Sociais', 2019, 139, 36),
('Revival', 'Romance', 2014, 140, 91),
('Romance Real', 'Ficção LGBTQIA+', 2022, 141, 19),
('Rose Madder', 'Romance psicológico', 1995, 142, 91),
('Saboroso Cadáver', 'Ficção', 2017, 143, 3),
('Saco de Ossos', 'Ficção gótica', 1998, 144, 91),
('Salem', 'Terror', 1975, 145, 91),
('Sinhá-Moça', 'Ficção histórica', 1950, 146, 66),
('Sissi', 'Romance', 2016, 147, 7),
('Sniper de Elite: América Sitiada', 'Suspense', 2014, 148, 87),
('Só a Gente Sabe o que Sente', 'Crônica', 2022, 149, 35),
('Sob a Redoma', 'Ficção científica', 2009, 150, 91),
('Sob o Céu de Vagalumes', 'Ficção LGBTQIA+', 2020, 151, 96),
('Sobre a Escrita', 'Não-Ficção', 2000, 152, 91),
('Sombras da Noite', 'Suspense', 1978, 153, 91),
('Stephen King, a Biografia: Coração Assombrado', 'Biografia', 2015, 154, 91),
('Todos Os Nomes', 'Romance', 1997, 155, 47),
('Tripulação De Esqueletos', 'Ficção científica', 1985, 156, 91),
('Trocas Macabras', 'Suspense', 1991, 157, 91),
('Tudo é Eventual', 'Terror', 1979, 158, 91),
('Última Parada', 'Ficção LGBTQIA+', 2021, 159, 18),
('Um Milhão de Finais Felizes', 'Ficção LGBTQIA+', 2018, 160, 97),
('Um Projeto de Democracia', 'Ciência Política e Ciências Sociais', 2016, 161, 23),
('Um Retrato do Artista Quando Jovem', 'Biografia', 1916, 162, 41),
('Uma Farsa de Amor Na Espanha', 'Romance', 2022, 163, 30),
('Uma Lição Inesquecível', 'Biografia', 2020, 164, 52),
('Vermelho, Branco e Sangue Azul', 'Ficção LGBTQIA+', 2019, 165, 18),
('Viagem à Calábria', 'Romance', 2014, 166, 88),
('W: Valéria e Valentina', 'Mistério', 2021, 167, 38),
('Xisto No Espaço', 'Ficção científica', 2000, 168, 63),
('Zona Morta', 'Terror', 1979, 169, 91);

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
  ADD PRIMARY KEY (`idAutor`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`idlivro`),
  ADD KEY `idautor` (`idautor`);

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
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `idAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `idlivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`idautor`) REFERENCES `autor` (`idAutor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
