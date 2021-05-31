-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 27, 2021 alle 11:45
-- Versione del server: 10.4.14-MariaDB
-- Versione PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ripetizioni_avo`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `alunni`
--

CREATE TABLE `alunni` (
  `id` int(11) NOT NULL,
  `id_studente` int(11) NOT NULL,
  `ore_da_alunno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `indirizzi`
--

CREATE TABLE `indirizzi` (
  `id` varchar(255) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `indirizzi`
--

INSERT INTO `indirizzi` (`id`, `nome`) VALUES
('ELE', 'Elettronica ed Elettrotecnica'),
('INF', 'Informatica e telecomunicazioni'),
('LSoSA', 'Liceo Scientifico (opzione Scienze Applicate)'),
('MEC', 'Meccanica, Meccatronica ed Energia');

-- --------------------------------------------------------

--
-- Struttura della tabella `insegnanti`
--

CREATE TABLE `insegnanti` (
  `id` int(11) NOT NULL,
  `id_studente` int(11) NOT NULL,
  `ore_da_insegnante` int(11) NOT NULL,
  `crediti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `insegnanti_materie`
--

CREATE TABLE `insegnanti_materie` (
  `id_insegnante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `materie`
--

CREATE TABLE `materie` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `materie`
--

INSERT INTO `materie` (`id`, `nome`) VALUES
(1, 'Lingua e letteratura italiana'),
(2, 'Lingua inglese'),
(3, 'Storia'),
(4, 'Geografia'),
(5, 'Filosofia'),
(6, 'Matematica'),
(7, 'Informatica'),
(8, 'Fisica'),
(9, 'Disegno e storia dell arte'),
(10, 'Scienze motorie e sportive'),
(11, 'Chimica'),
(12, 'Biologia'),
(13, 'Scienze della terra'),
(14, 'Diritto ed economia'),
(15, 'Tecnologie e tecniche di rappresentazione grafica'),
(16, 'Tecnologie informatiche'),
(17, 'Scienze e tecnologie applicate'),
(18, 'Tecnologie e progettazione di sistemi elettrici ed elettronici'),
(19, 'Elettrotecnica ed Elettronica'),
(20, 'Sistemi automatici'),
(21, 'Sistemi e reti'),
(22, 'Tecnologie e progettazione di sistemi informatici e di telecomunicazioni'),
(23, 'Gestione progetto, organizzazione di impresa'),
(24, 'Telecomunicazioni'),
(25, 'Meccanica, macchine ed energia'),
(26, 'Sistemi e automazione'),
(27, 'Tecnologie meccaniche di processo e prodotto'),
(28, 'Disegno, progettazione e organizzazione industriale');

-- --------------------------------------------------------

--
-- Struttura della tabella `materie_indirizzo`
--

CREATE TABLE `materie_indirizzo` (
  `id_materia` int(11) NOT NULL,
  `id_indirizzo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `materie_indirizzo`
--

INSERT INTO `materie_indirizzo` (`id_materia`, `id_indirizzo`) VALUES
(1, 'ELE'),
(1, 'INF'),
(1, 'LSoSA'),
(1, 'MEC'),
(2, 'ELE'),
(2, 'INF'),
(2, 'LSoSA'),
(2, 'MEC'),
(3, 'ELE'),
(3, 'INF'),
(3, 'LSoSA'),
(3, 'MEC'),
(4, 'ELE'),
(4, 'INF'),
(4, 'LSoSA'),
(4, 'MEC'),
(5, 'LSoSA'),
(6, 'ELE'),
(6, 'INF'),
(6, 'LSoSA'),
(6, 'MEC'),
(7, 'INF'),
(7, 'LSoSA'),
(8, 'ELE'),
(8, 'INF'),
(8, 'LSoSA'),
(8, 'MEC'),
(9, 'LSoSA'),
(11, 'ELE'),
(11, 'INF'),
(11, 'LSoSA'),
(11, 'MEC'),
(12, 'ELE'),
(12, 'INF'),
(12, 'LSoSA'),
(12, 'MEC'),
(13, 'ELE'),
(13, 'INF'),
(13, 'LSoSA'),
(13, 'MEC'),
(14, 'ELE'),
(14, 'INF'),
(14, 'MEC'),
(15, 'ELE'),
(15, 'INF'),
(15, 'MEC'),
(16, 'ELE'),
(16, 'INF'),
(16, 'MEC'),
(17, 'ELE'),
(17, 'INF'),
(17, 'MEC'),
(18, 'ELE'),
(19, 'ELE'),
(20, 'ELE'),
(21, 'INF'),
(22, 'INF'),
(23, 'INF'),
(24, 'INF'),
(25, 'MEC'),
(26, 'MEC'),
(27, 'MEC'),
(28, 'MEC');

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazioni`
--

CREATE TABLE `prenotazioni` (
  `id` int(11) NOT NULL,
  `id_insegnante` int(11) NOT NULL,
  `id_alunno` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `data` date NOT NULL,
  `orario` time NOT NULL,
  `durata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `studenti`
--

CREATE TABLE `studenti` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cognome` varchar(40) NOT NULL,
  `email` varchar(34) NOT NULL,
  `password` varchar(40) NOT NULL,
  `anno` int(1) NOT NULL,
  `sezione` varchar(1) NOT NULL,
  `indirizzo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `alunni`
--
ALTER TABLE `alunni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_studente` (`id_studente`);

--
-- Indici per le tabelle `indirizzi`
--
ALTER TABLE `indirizzi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `insegnanti`
--
ALTER TABLE `insegnanti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_studente` (`id_studente`);

--
-- Indici per le tabelle `insegnanti_materie`
--
ALTER TABLE `insegnanti_materie`
  ADD PRIMARY KEY (`id_insegnante`,`id_materia`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indici per le tabelle `materie`
--
ALTER TABLE `materie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `materie_indirizzo`
--
ALTER TABLE `materie_indirizzo`
  ADD PRIMARY KEY (`id_materia`,`id_indirizzo`),
  ADD KEY `id_indirizzo` (`id_indirizzo`);

--
-- Indici per le tabelle `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_insegnante` (`id_insegnante`),
  ADD KEY `id_alunno` (`id_alunno`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indici per le tabelle `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indirizzo` (`indirizzo`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `alunni`
--
ALTER TABLE `alunni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT per la tabella `insegnanti`
--
ALTER TABLE `insegnanti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT per la tabella `materie`
--
ALTER TABLE `materie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT per la tabella `studenti`
--
ALTER TABLE `studenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `alunni`
--
ALTER TABLE `alunni`
  ADD CONSTRAINT `alunni_ibfk_1` FOREIGN KEY (`id_studente`) REFERENCES `studenti` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `insegnanti`
--
ALTER TABLE `insegnanti`
  ADD CONSTRAINT `insegnanti_ibfk_1` FOREIGN KEY (`id_studente`) REFERENCES `studenti` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `insegnanti_materie`
--
ALTER TABLE `insegnanti_materie`
  ADD CONSTRAINT `insegnanti_materie_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materie` (`id`),
  ADD CONSTRAINT `insegnanti_materie_ibfk_3` FOREIGN KEY (`id_insegnante`) REFERENCES `insegnanti` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `materie_indirizzo`
--
ALTER TABLE `materie_indirizzo`
  ADD CONSTRAINT `materie_indirizzo_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materie` (`id`),
  ADD CONSTRAINT `materie_indirizzo_ibfk_2` FOREIGN KEY (`id_indirizzo`) REFERENCES `indirizzi` (`id`),
  ADD CONSTRAINT `materie_indirizzo_ibfk_3` FOREIGN KEY (`id_materia`) REFERENCES `materie` (`id`);

--
-- Limiti per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD CONSTRAINT `prenotazioni_ibfk_3` FOREIGN KEY (`id_materia`) REFERENCES `materie` (`id`),
  ADD CONSTRAINT `prenotazioni_ibfk_4` FOREIGN KEY (`id_alunno`) REFERENCES `alunni` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prenotazioni_ibfk_5` FOREIGN KEY (`id_insegnante`) REFERENCES `insegnanti` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `studenti`
--
ALTER TABLE `studenti`
  ADD CONSTRAINT `studenti_ibfk_1` FOREIGN KEY (`indirizzo`) REFERENCES `indirizzi` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
