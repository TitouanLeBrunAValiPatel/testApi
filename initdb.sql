-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-lebrun.alwaysdata.net
-- Generation Time: Feb 05, 2024 at 02:54 PM
-- Server version: 10.6.16-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lebrun_e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `card_name` varchar(50) NOT NULL,
  `card_number` bigint(11) NOT NULL,
  `card_expiration` varchar(50) NOT NULL,
  `cryptogram` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(1, 'Meubles', NULL),
(511, 'banc-bout-de-lit', NULL),
(512, 'bibliotheque', NULL),
(513, 'buffet-vaisselier', NULL),
(514, 'bureau', NULL),
(515, 'chaises-de-bar', NULL),
(516, 'chaises-de-table', NULL),
(517, 'chiffonniers', NULL),
(518, 'coiffeuse', NULL),
(519, 'commodes-chiffonniers', NULL),
(520, 'consoles', NULL),
(521, 'desserte', NULL),
(522, 'etageres', NULL),
(523, 'etageres-murale', NULL),
(524, 'fauteuil', NULL),
(525, 'fauteuil-de-table', NULL),
(526, 'meuble-tv', NULL),
(527, 'meubles-de-rangement', NULL),
(528, 'paravent', NULL),
(529, 'poufs-pliants', NULL),
(530, 'poufs-tabourets', NULL),
(531, 'table-basses', NULL),
(532, 'table-de-chevet', NULL),
(533, 'table-gigogne', NULL),
(534, 'table-haute', NULL),
(535, 'tables-a-manger', NULL),
(536, 'tables-d-appoint', NULL),
(537, 'tabourets', NULL),
(538, 'tabourets-de-bar', NULL),
(539, 'tete-de-lit', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` longblob NOT NULL,
  `id_color` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`user_id`, `product_id`, `date`, `number`) VALUES
(1, 1, '2023-12-06 00:00:00', 2),
(1, 1, '2023-12-06 00:00:00', 3),
(1, 1, '2023-12-06 11:36:59', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(300) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `name`, `description`, `stock`, `price`) VALUES
(1, 1, 'Armoire en bois', 'Cest une armoire en bois des années 60.', 12, 99),
(512, 511, 'Banc \"Silas\"', 'Manguier, 165x40 cm', 0, 199),
(513, 511, 'Banc \"Malone\"', 'Velours, vert cÃ©ladon, 98x51 cm', 0, 99),
(514, 511, 'Banc \"Malone\"', 'Velours, gris foncÃ©, 98x51 cm', 0, 99),
(515, 511, 'Banc \"Banila\"', 'Acacia, 150x37 cm', 0, 199),
(516, 511, 'Banc velours \"Salome\"', 'Noir, 100x35 cm', 0, 69),
(517, 511, 'Banc \"Edena\"', 'Acacia, 170x35 cm', 0, 149),
(518, 512, 'BibliothÃ¨que 2 portes \"Oliver\"', 'Placage chÃªne, 92,5x39,5 cm', 0, 399),
(519, 512, 'Ã‰tagÃ¨re \"Siam\"', 'Fer et bois, 74x185 cm', 0, 179),
(520, 512, 'Vitrine \"Aldir\"', 'MÃ©tal noir, 70x150 cm', 0, 199),
(521, 512, 'BibliothÃ¨que \"Solen\"', 'Bois, Blanc, 80x175 cm', 0, 199),
(522, 512, 'BibliothÃ¨que \"Chrysa\"', 'Noir, 82x175 cm', 0, 199),
(523, 512, 'BibliothÃ¨que \"Sabor\"', 'Acacia, 95x190 cm', 0, 799),
(524, 512, 'BibliothÃ¨que \"Cierna\"', 'Sapin et mÃ©tal, 93x198 cm', 0, 269),
(525, 512, 'BibliothÃ¨que \"Torof\"', 'MÃ©tal noir, 95x180 cm', 0, 299),
(526, 512, 'BibliothÃ¨que \"Nelia\"', 'MÃ©tal noir, 80x180 cm', 0, 199),
(527, 512, 'BibliothÃ¨que 2 portes \"Colva\"', 'Effet chÃªne, 80x180 cm', 0, 269),
(528, 512, 'BibliothÃ¨que \"Silas\"', 'Manguier, 90x180 cm', 0, 599),
(529, 512, 'BibliothÃ¨que \"Tibo\"', 'MÃ©tal noir, 85x160 cm', 0, 599),
(530, 512, 'BibliothÃ¨que \"Danik\"', 'Bois, 80x150 cm', 0, 399),
(531, 512, 'Buffet haut 2 portes \"Rayo\"', 'Cannage rotin, 80x165 cm', 0, 299),
(532, 512, 'BibliothÃ¨que \"Simon\"', 'FrÃªne, 80x184 cm', 0, 249),
(533, 512, 'BibliothÃ¨que \"Banila\"', 'Acacia, 95x180 cm', 0, 599),
(534, 512, 'BibliothÃ¨que \"Broc', 'MÃ©tal noir, 97x187 cm', 0, 599),
(535, 512, 'BibliothÃ¨que \"Asmar\"', 'Bois foncÃ©, 100x137 cm', 0, 249),
(536, 512, 'Armoire 2 portes \"Tiria\"', 'Bois, 92,5x40 cm, 2 portes', 0, 379),
(537, 513, 'Buffet 2 portes \"Aldir\"', 'MÃ©tal noir, 100x75 cm', 0, 199),
(538, 513, 'Buffet 3 portes \"Oliver\"', 'Placage chÃªne, 160x44 cm', 0, 499),
(539, 513, 'Buffet 3 portes \"Ajmal\"', 'Manguier, 160x80 cm', 0, 499),
(540, 513, 'Buffet 2 portes \"Chrysa\"', 'Noir, 80x85 cm', 0, 179),
(541, 513, 'Meuble bar \"Bakos', 'FrÃªne, MÃ©tal, 60x160 cm', 0, 179),
(542, 513, 'Haut de buffet \"Aleria\"', 'Blanc, 140x119 cm', 0, 349),
(543, 513, 'Buffet 2 portes \"Arden\"', 'Bois, 119x40 cm, 2 portes', 0, 299),
(544, 513, 'Meuble bar \"Cuba\"', 'Noir, 110x50 cm', 0, 449),
(545, 513, 'Buffet 2 portes \"Olbia\"', 'Acacia, 110x45 cm, 2 portes', 0, 449),
(546, 513, 'Buffet 2 portes \"Shirel\"', 'Manguier, 90x90 cm', 0, 399),
(547, 513, 'Buffet 4 portes \"Sabor\"', 'Acacia, 160x80 cm', 0, 599),
(548, 513, 'Buffet 2 portes \"Tedy\"', 'Noir, 120x80 cm', 0, 149),
(549, 513, 'Buffet 2 portes \"Broc\"', 'MÃ©tal gris, 102x101 cm', 0, 449),
(550, 513, 'Buffet 2 portes \"Teeco\"', 'MÃ©tal noir, 80x40 cm', 0, 249),
(551, 513, 'Buffet 3 portes \"Nelia\"', 'MÃ©tal noir, 120x80 cm', 0, 199),
(552, 513, 'Buffet 2 portes \"Aeris\"', 'Acacia, 180x80 cm', 0, 699),
(553, 513, 'Buffet 1 porte \"Digha\"', 'ChÃªne, 160x72 cm', 0, 499),
(554, 513, 'Buffet 2 portes \"Hina\"', 'Bois blanchi, 80x85 cm', 0, 179),
(555, 513, 'Meuble bar \"Silas\"', 'Manguier, 98x120 cm', 0, 449),
(556, 513, 'Buffet 2 portes \"Danik\"', 'Bois, 160x85 cm', 0, 399),
(557, 513, 'Buffet 2 portes \"Rayo\"', 'Cannage rotin, 100x79 cm', 0, 249),
(558, 513, 'Buffet 1 porte \"Danik\"', 'Bois, 94x95 cm', 0, 249),
(559, 513, 'Buffet 2 portes \"Solen\"', 'Bois, Blanc, 88x86 cm', 0, 179),
(560, 513, 'Buffet 2 portes \"Cierna\"', 'Noir, 140x85 cm', 0, 399),
(561, 513, 'Buffet 1 porte \"Cierna\"', 'Noir, 80x85 cm', 0, 229),
(562, 513, 'Buffet \"Piana\"', 'Teck, cannage rotin, 180x90 cm', 0, 599),
(563, 513, 'Buffet 3 portes \"Banila\"', 'Acacia, 160x80 cm', 0, 599),
(564, 513, 'Buffet 2 portes \"Damian\"', 'Gris ardoise, 80x35 cm', 0, 179),
(565, 513, 'Meuble 6 portes \"Sevin\"', 'MÃ©tal noir, 90x89 cm', 0, 229),
(566, 513, 'Buffet 6 tiroirs \"Silas\"', 'Manguier, 150x40 cm', 0, 599),
(567, 513, 'Buffet \"Koval\"', 'Manguier, 115x80 cm', 0, 449),
(568, 513, 'Buffet 2 portes \"Origins\"', 'Bois recyclÃ©, 115x80 cm', 0, 449),
(569, 513, 'Buffet 2 portes \"Ajmal\"', 'Manguier, 90x80 cm', 0, 369),
(570, 513, 'Buffet haut \"Jiling\"', 'Acacia, 80x35 cm', 0, 399),
(571, 514, 'Bureau 2 tiroirs \"Oliver\"', 'Placage chÃªne', 0, 299),
(572, 515, 'Chaise de bar \"Maxon\"', 'Blanc', 0, 44),
(573, 515, 'Chaise de bar \"Maxon\"', 'HÃªtre & mÃ©tal, jaune ocre', 0, 44),
(574, 515, 'Chaise de bar \"Maxon\"', 'Noir', 0, 44),
(575, 515, 'Chaise de bar \"Maxon\"', 'Vert kaki', 0, 44),
(576, 515, 'Chaise de bar \"Maxon\"', 'Gris', 0, 44),
(577, 515, 'Lot de 2 chaises de bar \"Vladi\"', 'Effet cuir, Gris', 0, 119),
(578, 515, 'Lot de 2 chaises de bar \"Vladi\"', 'Effet cuir, Marron', 0, 119),
(579, 515, 'Lot de 2 chaises de bar \"Delek\"', 'Gris', 0, 159),
(580, 515, 'Lot de 2 chaises de bar \"Delek\"', 'Noir', 0, 159),
(581, 515, 'Chaise de bar \"Celeste\"', 'Velours cÃ´telÃ©, Gris taupe', 0, 99),
(582, 515, 'Chaise de bar \"Celeste\"', 'Velours cÃ´telÃ©, Bleu encre', 0, 99),
(583, 515, 'Chaise de bar \"Celeste\"', 'Velours cÃ´telÃ©, Beige', 0, 99),
(584, 515, 'Chaise de bar \"Celeste\"', 'Velours cÃ´telÃ©, Rose terracotta', 0, 99),
(585, 515, 'Chaise de bar \"Celeste\"', 'Velours cÃ´telÃ©, Vert jade', 0, 99),
(586, 515, 'Chaise de bar \"Celeste\"', 'Velours cÃ´telÃ©, Gris', 0, 99),
(587, 515, 'Chaise de bar ajustable \"Aiko\"', 'MÃ©tal, Vert kaki', 0, 59),
(588, 515, 'Chaise de bar ajustable \"Aiko\"', 'MÃ©tal, Gris souris', 0, 59),
(589, 515, 'Chaise de bar \"Kara\"', 'Velours, Gris ardoise', 0, 79),
(590, 515, 'Chaise de bar ajustable \"Delek\"', 'Gris', 0, 79),
(591, 515, 'Chaise de bar ajustable \"Delek\"', 'Marron Tonka', 0, 79),
(592, 515, 'Chaise de bar ajustable \"Delek\"', 'Beige', 0, 79),
(593, 515, 'Chaise de bar \"Kara\"', 'Velours, Bleu canard', 0, 79),
(594, 515, 'Chaise de bar ajustable \"Aiko\"', 'Blanc', 0, 59),
(595, 515, 'Chaise de bar ajustable \"Aiko\"', 'Noir', 0, 59),
(596, 515, 'Chaise de bar \"Olwen\"', 'Effet cuir, Vert kaki', 0, 89),
(597, 515, 'Chaise de bar \"Olwen\"', 'Effet cuir, Marron', 0, 89),
(598, 515, 'Chaise de bar \"Olwen\"', 'Effet cuir, Gris ardoise', 0, 89),
(599, 515, 'Chaise de bar \"Kubu\"', 'MÃ©tal et rotin', 0, 99),
(600, 515, 'Chaise de bar \"Dario\"', 'Cuir, Marron cognac', 0, 149),
(601, 515, 'Chaise de bar \"Dario\"', 'Cuir, Vert cÃ¨dre', 0, 149),
(602, 515, 'Chaise de bar \"Dario\"', 'Cuir, Noir', 0, 149),
(603, 515, 'Lot de 2 chaises de bar \"Lois\"', 'Effet cuir, Marron cognac', 0, 139),
(604, 515, 'Lot de 2 chaises de bar \"Lois\"', 'Effet cuir, Noir', 0, 139),
(605, 515, 'Chaise de bar \"Maxon\"', 'HÃªtre & mÃ©tal, rose terracotta', 0, 44),
(606, 516, 'Lot de 2 chaises \"Tyka\"', 'Noir', 0, 79),
(607, 516, 'Chaise \"Slano\", pieds imitation hÃªtre', 'Bouclette, Blanc', 0, 69),
(608, 516, 'Chaise \"Baya\", pieds hÃªtre', 'Vert kaki', 0, 39),
(609, 516, 'Chaise \"Baya\", pieds hÃªtre', 'Bleu canard', 0, 39),
(610, 516, 'Chaise \"Kubu\"', 'Rotin, MÃ©tal', 0, 89),
(611, 516, 'Chaise \"Baya\"', 'HÃªtre, gris', 0, 59),
(612, 516, 'Chaise \"Baya\"', 'HÃªtre, ambre', 0, 59),
(613, 516, 'Chaise \"Baya\"', 'HÃªtre, bleu', 0, 59),
(614, 516, 'Chaise \"Baya\"', 'HÃªtre, jaune ocre', 0, 59),
(615, 516, 'Chaise \"Trecia\"', 'Rotin, noir', 0, 99),
(616, 516, 'Chaise \"Kizar\"', 'Rotin, Cuir noir', 0, 169),
(617, 516, 'Lot de 2 chaises \"Roka\"', 'Gris souris', 0, 79),
(618, 516, 'Lot de 2 chaises \"Roka\"', 'Gris', 0, 79),
(619, 516, 'Lot de 2 chaises \"Tyka\"', 'Bleu', 0, 79),
(620, 516, 'Lot de 2 chaises \"Tyka\"', 'Jaune', 0, 79),
(621, 516, 'Lot de 2 chaises \"Tyka\"', 'Gris', 0, 79),
(622, 516, 'Chaise \"Baya\", pieds hÃªtre', 'Jaune moutarde', 0, 39),
(623, 516, 'Chaise \"Baya\", pieds hÃªtre', 'Bleu encre', 0, 39),
(624, 516, 'Chaise \"Baya\", pieds hÃªtre', 'Beige', 0, 39),
(625, 516, 'Chaise \"Slano\", pieds mÃ©tal noir', 'Velours, Noir et blanc', 0, 59),
(626, 516, 'Chaise \"Sirac\"', 'Bleu canard', 0, 59),
(627, 516, 'Chaise \"Slano\", pieds mÃ©tal noir', 'Velours, Noir', 0, 59),
(628, 516, 'Chaise \"Baya\", pieds hÃªtre', 'Patchwork bleu canard', 0, 49),
(629, 516, 'Chaise \"Tyka\"', 'Velours, Noir', 0, 49),
(630, 516, 'Chaise \"Baya\", pieds hÃªtre', 'Rose', 0, 39),
(631, 516, 'Chaise \"Baya\", pieds hÃªtre', 'Gris ardoise', 0, 39),
(632, 516, 'Chaise \"Isak\"', 'HÃªtre et cannage, Blanc', 0, 79),
(633, 516, 'Chaise \"Isak\"', 'ChÃªne, cannage', 0, 79),
(634, 516, 'Chaise \"Taho\"', 'Transparent', 0, 49),
(635, 516, 'Chaise \"Vladi\"', 'Marron effet cuir', 0, 49),
(636, 516, 'Chaise \"Baya\", pieds hÃªtre', 'Jaune', 0, 39),
(637, 516, 'Chaise \"Baya\", pieds hÃªtre', 'Gris', 0, 39),
(638, 516, 'Chaise \"Baya\", pieds hÃªtre', 'Noir', 0, 39),
(639, 516, 'Chaise \"Roka\"', 'Velours, Bleu canard', 0, 39),
(640, 516, 'Chaise \"Slano\", pieds imitation hÃªtre', 'Velours, Vert', 0, 59),
(641, 516, 'Chaise \"Roka\"', 'Blanc', 0, 49),
(642, 516, 'Chaise \"Roka\"', 'Blanc ivoire', 0, 49),
(643, 516, 'Chaise \"Roka\"', 'Gris ardoise', 0, 49),
(644, 516, 'Chaise \"Roka\"', 'Vert cÃ©ladon', 0, 49),
(645, 516, 'Chaise \"Isak\"', 'HÃªtre, Noir', 0, 79),
(646, 516, 'Chaise \"Slano\", pieds imitation hÃªtre', 'Velours, Jaune cumin', 0, 59),
(647, 516, 'Chaise \"Slano\", pieds mÃ©tal noir', 'Velours, Gris souris', 0, 59),
(648, 516, 'Chaise \"Sirac\"', 'Gris souris', 0, 59),
(649, 516, 'Chaise \"Sirac\"', 'Gris ardoise', 0, 59),
(650, 516, 'Chaise \"Slano\", pieds imitation hÃªtre', 'Velours, Vert cÃ©ladon', 0, 59),
(651, 516, 'Chaise \"Slano\", pieds imitation hÃªtre', 'Velours, Rose terracotta', 0, 59),
(652, 516, 'Chaise \"Slano\", pieds mÃ©tal noir', 'Velours, Jaune moutarde', 0, 59),
(653, 516, 'Chaise \"Slano\", pieds imitation hÃªtre', 'Velours, Gris taupe', 0, 59),
(654, 517, 'Chiffonier \"Rayo\"', 'Bouleau, 50x35 cm, 4 tiroirs', 0, 249),
(655, 517, 'Chiffonier \"Tiria\"', 'Bois, H.103 cm, 4 tiroirs', 0, 199),
(656, 517, 'Chiffonnier \"Charme\"', 'Blanc, 5 tiroirs', 0, 149),
(657, 517, 'Chiffonnier \"Charme\"', 'Blanc, 6 tiroirs', 0, 129),
(658, 517, 'Chiffonnier \"Charme\"', 'Bois blanchi, 5 tiroirs', 0, 149),
(659, 517, 'Chiffonnier \"Charme\"', 'Bois blanchi 6 tiroirs', 0, 129),
(660, 517, 'Chiffonnier \"Broc\"', 'MÃ©tal noir, 9 tiroirs', 0, 279),
(661, 517, 'Chiffonnier \"Broc\"', 'MÃ©tal noir, 3 tiroirs', 0, 129),
(662, 518, 'Coiffeuse \"Aurell\"', 'Blanc, 1 tiroir', 0, 99),
(663, 518, 'Coiffeuse \"Arden\"', 'Placage frÃªne', 0, 229),
(664, 519, 'Commode \"Rayo\"', 'Bouleau, 120x40 cm, 6 tiroirs', 0, 349),
(665, 519, 'Commode \"Torof\"', 'Bois et mÃ©tal, 6 tiroirs', 0, 279),
(666, 520, 'Console \"Jiling\"', 'Acacia', 0, 399),
(667, 520, 'Console \"Ajmal\"', 'Manguier, L.120 cm', 0, 199),
(668, 520, 'Console \"Edena\"', 'Acacia, L.120 cm', 0, 149),
(669, 520, 'Console \"Charme\"', 'Blanc, L.80 cm', 0, 59),
(670, 520, 'Console \"Charme\"', 'Bois blanchi L.80 cm', 0, 59),
(671, 520, 'Console 2 tiroirs \"Naomi\"', 'Bois et mÃ©tal, L.110 cm', 0, 179),
(672, 520, 'Console \"Cierna\"', 'Noir, L.110 cm', 0, 179),
(673, 520, 'Console 2 tiroirs \"Danik\"', 'Bois, L.110 cm', 0, 179),
(674, 520, 'Console 2 tiroirs \"Baris\"', 'Bois, Noir, L.112 cm', 0, 179),
(675, 520, 'Console 3 tiroirs \"Rayo\"', 'Cannage rotin, L.110 cm', 0, 179),
(676, 520, 'Console 2 tiroirs \"Charme\"', 'Bois blanchi, L.110 cm', 0, 129),
(677, 520, 'Console \"Hina\" avec Ã©tagÃ¨re', 'Bois blanchi, L.80 cm', 0, 79),
(678, 520, 'Console \"Chrysa\"', 'Noir, L.87 cm', 0, 89),
(679, 520, 'Console \"Solen\"', 'Bois, Blanc, L.110 cm', 0, 129),
(680, 520, 'Console \"Damian\"', 'Gris ardoise, L.110 cm', 0, 149),
(681, 520, 'Console \"Chrysa\"', 'Blanc, L.87 cm', 0, 89),
(682, 520, 'Console 2 portes \"Colva\"', 'Effet chÃªne, L.100 cm', 0, 149),
(683, 521, 'Desserte \"Noam\"', 'MÃ©tal, Noir, L.93 cm', 0, 149),
(684, 521, 'Desserte \"Antonella\"', 'MÃ©tal, DorÃ©, L.92 cm', 0, 149),
(685, 521, 'Desserte \"Thalia\"', 'MÃ©tal dorÃ©, D.40 cm', 0, 99),
(686, 522, 'Ã‰tagÃ¨re \"Bakos\"', 'Bois et mÃ©tal, 50x176 cm', 0, 129),
(687, 522, 'Ã‰tagÃ¨re \"Nelia\"', 'MÃ©tal noir, 80x137 cm', 0, 149),
(688, 522, 'EtagÃ¨re 5 niveaux \"Arden\"', 'Bois, 119,5x40 cm, 5 niveaux', 0, 399),
(689, 522, 'Ã‰tagÃ¨re \"Artif\"', 'MÃ©tal dorÃ©, 81x87 cm', 0, 169),
(690, 522, 'Ã‰tagÃ¨re \"Artif\"', 'MÃ©tal dorÃ©, 56x151 cm', 0, 179),
(691, 522, 'Ã‰tagÃ¨re \"Gota\"', 'MÃ©tal noir, 75x100 cm', 0, 79),
(692, 522, 'Ã‰tagÃ¨re \"Edena\"', 'Acacia et mÃ©tal, 90x141 cm', 0, 199),
(693, 522, 'Ã‰tagÃ¨re \"Jordi\"', 'Bois et mÃ©tal, H.98 cm', 0, 49),
(694, 522, 'Ã‰tagÃ¨re \"Jordi\"', 'Bois et mÃ©tal, H.94 cm', 0, 89),
(695, 522, 'Ã‰tagÃ¨re \"Gota\"', 'MÃ©tal noir, 90x180 cm', 0, 149),
(696, 522, 'BibliothÃ¨que \"Edena\"', 'Acacia et mÃ©tal, 45x180 cm', 0, 179),
(697, 522, 'BibliothÃ¨que \"Edena\"', 'Acacia et mÃ©tal, 90x180 cm', 0, 269),
(698, 522, 'Ã‰tagÃ¨re \"Timeo\" ronde', 'Noir, D.50 cm', 0, 34),
(699, 522, 'Ã‰tagÃ¨re \"Asco\"', 'MÃ©tal, H.160 cm', 0, 129),
(700, 522, 'Ã‰tagÃ¨re \"Danik\" ronde', 'Bois et mÃ©tal, 91x100 cm', 0, 169),
(701, 522, 'EtagÃ¨re 3 niveaux \"Haja\"', 'MÃ©tal, 90x32 cm, 3 niveaux', 0, 129),
(702, 522, 'Ã‰tagÃ¨re \"Solen\"', 'Bois, Blanc, 75x102 cm', 0, 99),
(703, 523, 'Ã‰tagÃ¨re murale \"Jordi\"', 'Bois et mÃ©tal, 75x36 cm', 0, 34),
(704, 523, 'Ã‰tagÃ¨re murale \"Irena\"', 'Noir, D.55 cm', 0, 24),
(705, 524, 'Pouf \"Candice\"', 'Velours, Vert kaki', 0, 249),
(706, 525, 'Fauteuil \"Baya\"', 'Noir, pieds hÃªtre', 0, 49),
(707, 525, 'Fauteuil \"Marlo\"', 'Velours, Noir', 0, 79),
(708, 525, 'Fauteuil \"Visoca\"', 'Beige', 0, 89),
(709, 525, 'Fauteuil \"Baya\"', 'Gris souris, pieds hÃªtre', 0, 49),
(710, 525, 'Fauteuil \"Marlo\"', 'Velours, Ambre', 0, 79),
(711, 525, 'Fauteuil \"Marlo\"', 'Velours, Vert kaki', 0, 79),
(712, 525, 'Fauteuil \"Marlo\"', 'Velours, Gris ardoise', 0, 79),
(713, 525, 'Fauteuil \"Kale\"', 'Blanc ivoire', 0, 169),
(714, 525, 'Fauteuil \"Celeste\"', 'Velours cÃ´telÃ©, Rose terracotta', 0, 79),
(715, 525, 'Fauteuil \"Celeste\"', 'Velours cÃ´telÃ©, Gris taupe', 0, 79),
(716, 525, 'Fauteuil \"Celeste\"', 'Velours cÃ´telÃ©, Gris', 0, 79),
(717, 525, 'Fauteuil \"Celeste\"', 'Velours cÃ´telÃ©, Bleu encre', 0, 79),
(718, 525, 'Fauteuil \"Celeste\"', 'Velours cÃ´telÃ©, Vert jade', 0, 79),
(719, 525, 'Fauteuil \"Siron\"', 'Gris', 0, 79),
(720, 525, 'Fauteuil \"Siron\"', 'Bleu canard', 0, 79),
(721, 525, 'Fauteuil \"Siron\"', 'Gris', 0, 79),
(722, 525, 'Fauteuil \"Celeste\"', 'Velours cÃ´telÃ©, Beige', 0, 79),
(723, 525, 'Fauteuil \"Siron\"', 'Jaune moutarde', 0, 79),
(724, 525, 'Fauteuil \"Siron\"', 'Bleu', 0, 79),
(725, 525, 'Fauteuil \"Kavi\"', 'Cuir, Marron cognac', 0, 179),
(726, 525, 'Fauteuil \"Priam\"', 'Noir', 0, 149),
(727, 525, 'Fauteuil \"Priam\"', 'Beige', 0, 149),
(728, 525, 'Fauteuil \"Visoca\"', 'Vert cÃ¨dre', 0, 89),
(729, 525, 'Fauteuil \"Visoca\"', 'Noir', 0, 89),
(730, 525, 'Fauteuil \"Marlo\"', 'Velours, Bleu canard', 0, 79),
(731, 525, 'Fauteuil \"Baya\"', 'Blanc, pieds hÃªtre', 0, 49),
(732, 525, 'Fauteuil \"Baya\"', 'Jaune moutarde, pieds hÃªtre', 0, 49),
(733, 525, 'Fauteuil \"Baya\"', 'Bleu canard, pieds hÃªtre', 0, 49),
(734, 525, 'Fauteuil \"Visoca\"', 'Jaune moutarde', 0, 89),
(735, 526, 'Meuble TV 2 portes \"Colva\"', 'Effet chÃªne, 53x140 cm', 0, 199),
(736, 526, 'Meuble vinyle \"Oliver\"', 'Bois, 100x39,5 cm, 1 porte', 0, 299),
(737, 526, 'Meuble bas \"Sevin\"', 'MÃ©tal noir, 54x120 cm', 0, 189),
(738, 526, 'Meuble TV \"Olbia\"', 'MÃ©tal & acacia, blanc, 2 portes', 0, 499),
(739, 526, 'Meuble TV 2 portes \"Origins\"', 'Bois recyclÃ©, 40x130 cm', 0, 449),
(740, 526, 'Meuble TV \"Gota\"', 'MÃ©tal noir, 50x120 cm', 0, 99),
(741, 526, 'Meuble TV 2 portes \"Tedy\"', 'MÃ©tal noir, 47x120 cm', 0, 149),
(742, 526, 'Meuble TV \"Sabor\"', 'Acacia, 55x160 cm', 0, 449),
(743, 526, 'Meuble TV \"Aeris\"', 'Acacia, 55x180 cm', 0, 499),
(744, 526, 'Meuble TV \"Silas\"', 'Manguier, 58x140 cm', 0, 399),
(745, 526, 'Meuble TV \"Elias\"', 'MÃ©tal et chÃªne, 52x140 cm', 0, 199),
(746, 526, 'Meuble TV \"Sevin\"', 'MÃ©tal gris, 56x140 cm', 0, 249),
(747, 526, 'Meuble TV \"Rayo\"', 'Bouleau et acajou, 50x140 cm', 0, 229),
(748, 526, 'Meuble TV \"Ajay\"', 'Manguier, 54x140 cm', 0, 399),
(749, 526, 'Meuble TV \"Arty\"', 'Bois et cannage rotin, 50x140 cm', 0, 249),
(750, 526, 'Meuble TV \"Banila\"', 'Acacia, 55x140 cm', 0, 349),
(751, 526, 'Meuble TV 2 portes \"Digha\"', 'ChÃªne, 55x170 cm', 0, 349),
(752, 527, 'Meuble d\entrÃ©e 1 tiroir \"Tiria\"', 'Placage frÃªne & mÃ©tal, 1 tiroir', 0, 199),
(753, 528, 'Paravent bois', 'Beige, H.170 cm', 0, 79),
(754, 528, 'Paravent bois', 'Gris, H.170 cm', 0, 79),
(755, 529, 'Pouf pliant \"Lilou\"', 'Velours, 38x38 cm', 0, 19),
(756, 529, 'Pouf pliant double \"Lilou\"', 'Velours, 76x38 cm', 0, 29),
(757, 529, 'Pouf pliant double \"Lilou\"', 'Velours, 76x38 cm', 0, 29),
(758, 529, 'Pouf pliant double \"Lilou\"', 'Velours, 76x38 cm', 0, 29),
(759, 529, 'Pouf pliant double \"Lilou\"', 'Velours, 76x38 cm', 0, 29),
(760, 529, 'Pouf pliant \"Jaiko\"', 'Bouclette, 40x38 cm', 0, 24),
(761, 529, 'Pouf pliant \"Lilou\"', 'Velours, 38x38 cm', 0, 19),
(762, 529, 'Pouf pliant \"Lilou\"', 'Velours, 38x38 cm', 0, 19),
(763, 529, 'Pouf pliant \"Jaiko\"', 'Bouclette, 40x38 cm', 0, 24),
(764, 529, 'Pouf pliant \"Jaiko\"', 'Bouclette, 40x38 cm', 0, 24),
(765, 529, 'Pouf pliant hexagonal \"Jiling\"', 'Velours, 40x38 cm', 0, 24),
(766, 529, 'Pouf pliant', 'Gris', 0, 14),
(767, 529, 'Pouf pliant', 'Noir', 0, 14),
(768, 529, 'Pouf pliant \"Tess\"', 'Velours, Jaune', 0, 19),
(769, 529, 'Pouf pliant \"Tess\"', 'Velours, Bleu', 0, 19),
(770, 529, 'Pouf pliant double \"Tomaz\"', 'Gris souris', 0, 29),
(771, 529, 'Pouf pliant \"Tomaz\"', 'Gris souris', 0, 19),
(772, 529, 'Pouf pliant double \"Lysandre\"', 'Effet velours, Gris ardoise', 0, 29),
(773, 529, 'Pouf pliant double \"Lysandre\"', 'Gris', 0, 29),
(774, 529, 'Pouf pliant double \"Lysandre\"', 'Beige', 0, 29),
(775, 529, 'Pouf pliant double', 'Gris', 0, 29),
(776, 529, 'Pouf pliant double', 'Noir', 0, 29),
(777, 529, 'Pouf pliant \"Lysandre\"', 'Velours, Noir', 0, 19),
(778, 529, 'Pouf pliant \"Lysandre\"', 'Velours, Gris souris', 0, 19),
(779, 529, 'Pouf pliant \"Lysandre\"', 'Gris', 0, 19),
(780, 529, 'Pouf pliant \"Lysandre\"', 'Beige', 0, 19),
(781, 529, 'Pouf pliant double \"Lysandre\"', 'Effet velours, Noir', 0, 29),
(782, 529, 'Pouf pliant double', 'Noir, 6 tiroirs', 0, 49),
(783, 529, 'Pouf pliant \"Lilou\"', 'Velours, 38x38 cm', 0, 19),
(784, 530, 'Pouf \"Sinan\"', 'Velours, D.40 cm', 0, 44),
(785, 530, 'Lot de 2 tabourets \"Firmin\"', 'Velours, Noir', 0, 119),
(786, 530, 'Pouf \"LÃ©andre\"', 'Effet velours, Noir', 0, 29),
(787, 530, 'Pouf \"Nofy\"', 'Velours, Gris', 0, 24),
(788, 530, 'Pouf \"Nofy\"', 'Velours, Bleu canard', 0, 24),
(789, 530, 'Pouf \"Sinan\"', 'Velours, Bleu canard', 0, 44),
(790, 530, 'Pouf \"Row\"', 'Coton recyclÃ©, Jaune moutarde', 0, 79),
(791, 530, 'Pouf \"Row\"', 'Coton recyclÃ©, Gris ardoise', 0, 79),
(792, 530, 'Pouf \"Chester\"', 'Cuir et bois, Marron', 0, 99),
(793, 530, 'Set de 2 poufs bidons \"Alfred\"', 'MÃ©tal, D.27/32 cm', 0, 29),
(794, 530, 'Pouf bohÃ¨me', 'Noir et beige, 45x45 cm', 0, 59),
(795, 530, 'Tabouret \"Arty\"', 'Velours, Jaune moutarde', 0, 29),
(796, 530, 'Tabouret \"Arty\"', 'Velours, Gris', 0, 29),
(797, 530, 'Tabouret \"Oslo\"', 'Effet fourrure, Blanc', 0, 19),
(798, 530, 'Tabouret \"Firmin\"', 'Velours, Bleu canard', 0, 59),
(799, 530, 'Pouf \"LÃ©andre\"', 'Effet velours, Bleu canard', 0, 29),
(800, 530, 'Tabouret \"Firmin\"', 'Velours, Gris', 0, 59),
(801, 530, 'Pouf \"LÃ©andre\"', 'Effet velours, Gris', 0, 29),
(802, 530, 'Set de 2 poufs \"Dani\"', 'Bouclette, L.37,5/41,5 cm', 0, 69),
(803, 530, 'Pouf pliant hexagonal \"Jiling\"', 'Velours, 40x38 cm', 0, 24),
(804, 530, 'Pouf \"Calabaza\"', 'Velours, D.44 cm', 0, 49),
(805, 530, 'Tabouret coffre \"Tess\"', 'Velours, Gris ardoise', 0, 29),
(806, 530, 'Tabouret coffre \"Tess\"', 'Velours, Jaune', 0, 29),
(807, 530, 'Tabouret coffre \"Tess\"', 'Velours, Bleu', 0, 29),
(808, 530, 'Tabouret de coiffeuse \"Aurell\"', 'Blanc', 0, 34),
(809, 530, 'Tabouret \"Suzette\"', 'Tricot gris', 0, 29),
(810, 530, 'Tabouret \"Suzette\"', 'Tricot beige', 0, 29),
(811, 530, 'Tabouret \"Adriel\"', 'Velours, Noir', 0, 29),
(812, 530, 'Pouf bidon \"Joao\"', 'MÃ©tal et bois, Noir', 0, 29),
(813, 530, 'Tabouret \"Akemi\"', 'Tricot, Vert jade', 0, 29),
(814, 530, 'Pouf \"Jilian\"', 'Jute et coton', 0, 49),
(815, 530, 'Pouf bidon \"Joao\"', 'MÃ©tal et bois, Vert kaki', 0, 29),
(816, 530, 'Pouf bidon \"Joao\"', 'MÃ©tal et bois, Blanc', 0, 29),
(817, 530, 'Pouf \"Adriana\"', 'Velours, Gris ardoise', 0, 49),
(818, 530, 'Tabouret \"Niko\"', 'MÃ©tal, Noir', 0, 29),
(819, 530, 'Pouf coffre \"Eliane\"', 'Velours, Blanc ivoire', 0, 59),
(820, 530, 'Pouf coffre \"Eliane\"', 'Velours, Noir', 0, 59),
(821, 530, 'Tabouret \"Sango\"', 'Motif jungle bleu', 0, 39),
(822, 530, 'Pouf \"Adriana\"', 'Velours, Jaune moutarde', 0, 49),
(823, 530, 'Tabouret \"Solaro\"', 'Velours, Vert cÃ©ladon', 0, 39),
(824, 530, 'Tabouret \"Living\"', 'Velours, Blanc ivoire', 0, 34),
(825, 530, 'Tabouret \"Living\"', 'Velours, Ambre', 0, 34),
(826, 530, 'Pouf \"Wond\"', 'Jacinthe d\eau tressÃ©e', 0, 39),
(827, 530, 'Pouf \"Seis\"', 'Velours, Gris', 0, 59),
(828, 530, 'Pouf \"Seis\"', 'Velours, Vert jade', 0, 59),
(829, 530, 'Pouf \"Calabaza\"', 'Velours, Jaune moutarde', 0, 49),
(830, 530, 'Pouf \"Calabaza\"', 'Velours, Noir', 0, 49),
(831, 530, 'Tabouret \"Solaro\"', 'Velours plissÃ©, Jaune moutarde', 0, 39),
(832, 531, 'Table basse \"Jiling\"', 'Acacia, 110x60 cm', 0, 199),
(833, 531, 'Table basse \"Tedy\"', 'Noir, 110x60 cm', 0, 129),
(834, 531, 'Table basse \"Chrysa\"', 'Noir, 110x60 cm', 0, 99),
(835, 531, 'Table basse \"Farah\"', 'Rotin, D.90 cm', 0, 249),
(836, 531, 'Table basse \"Aldir\"', 'Noir, 90x60 cm', 0, 79),
(837, 531, 'Table basse \"Haja\"', 'MÃ©tal, blanc, 100x50 cm', 0, 129),
(838, 531, 'Table basse \"Arden\"', 'Placage frÃªne, D.82 cm', 0, 179),
(839, 531, 'Table basse \"Arden\"', 'Placage frÃªne, 110x50 cm', 0, 149),
(840, 531, 'Table basse \"Olbia\"', 'Acacia, blanc, 120x70 cm', 0, 299),
(841, 531, 'Table dappoint \"Neile\"', '96x65 cm', 0, 79),
(842, 531, 'Table basse \"Edena\"', 'Acacia, 115x65 cm', 0, 129),
(843, 531, 'Table dappoint ronde', 'MÃ©tal, Gris, D.65 cm', 0, 59),
(844, 531, 'Table basse \"Neta\"', 'Rotin, D.73 cm', 0, 129),
(845, 531, 'Table basse \"Sabor\"', 'Acacia, 120x60 cm', 0, 249),
(846, 531, 'Table basse \"Aeris\"', 'Acacia, 130x70 cm', 0, 299),
(847, 531, 'Table basse \"Ajay\"', 'Manguier, 90x90 cm', 0, 399),
(848, 531, 'Table basse \"SÃ©vin\"', 'MÃ©tal, 110x60 cm', 0, 199),
(849, 531, 'Table basse \"Solen\"', 'Bois, Blanc, 110x60 cm', 0, 149),
(850, 531, 'Table basse \"Hina\"', 'Bois blanchi, 110x60 cm', 0, 149),
(851, 531, 'Table basse \"Suite\"', 'DorÃ©, D.71 cm', 0, 159),
(852, 531, 'Table basse \"Simon\"', 'MÃ©tal et frÃªne, 100x60 cm', 0, 149),
(853, 531, 'Table basse \"Siwan\"', 'D.70 cm', 0, 179),
(854, 531, 'Table dappoint \"Gypsy\"', 'Manguier, D.75 cm', 0, 129),
(855, 531, 'Table basse \"Taho\"', 'Verre trempÃ©, 110x60 cm', 0, 99),
(856, 531, 'Table basse \"Yoho\"', 'Noir, 90x90 cm', 0, 249),
(857, 531, 'Table basse \"Cierna\"', 'Noir, 110x60 cm', 0, 179),
(858, 531, 'Table basse \"Banila\"', 'Acacia, 120x70 cm', 0, 299),
(859, 531, 'Table basse \"Kushi', 'MÃ©tal noir, D.90 cm', 0, 269),
(860, 531, 'Table basse \"Damian\"', 'Gris ardoise, 109x45 cm', 0, 169),
(861, 531, 'Table basse \"Silas\"', 'Manguier, 117x71 cm', 0, 249),
(862, 531, 'Table basse \"Chrono\"', 'Noir, D.90 cm', 0, 199),
(863, 531, 'Table basse \"Gota\"', 'MÃ©tal noir, 100x100 cm', 0, 99),
(864, 531, 'Table basse \"Neile\"', 'MÃ©tal, 97x65 cm', 0, 79),
(865, 531, 'Table basse ronde \"Kemi\"', 'Noyer & mÃ©tal, noir, D.63,2 cm', 0, 59),
(866, 531, 'Table basse \"Neile\"', 'MÃ©tal, 112x80 cm', 0, 99),
(867, 531, 'Table basse ronde \"Kemi\"', 'Placage noyer & mÃ©tal, D.63,2 cm', 0, 59),
(868, 531, 'Table basse \"Enola\"', 'Placage frÃªne, noir, D.55 cm', 0, 79),
(869, 531, 'Table basse \"Slano\"', 'MÃ©tal & papier, D.90 cm', 0, 129),
(870, 531, 'Table basse 2 niveaux \"Kemi\"', 'Noyer & mÃ©tal, 118x43,2 cm', 0, 69),
(871, 531, 'Table basse \"Neile\"', '112x80 cm', 0, 99),
(872, 531, 'Table basse 2 niveaux \"Kemi\"', 'Noyer, noir, 118x43,2 cm', 0, 69),
(873, 531, 'Table basse \"Colva\"', 'Placage effet bois, D.70 cm', 0, 149),
(874, 531, 'Table basse 2 portes \"Colva\"', 'Beige, 120x60 cm', 0, 169),
(875, 531, 'Table basse \"Coppa\"', 'Manguier, D.91 cm', 0, 399),
(876, 532, 'Table de chevet \"Rayo\"', 'Bouleau, 45x35 cm, 1 tiroir', 0, 79),
(877, 532, 'Tables de chevet \"Tiria\"', 'Bois, 45x38,5 cm', 0, 99),
(878, 532, 'Table de chevet \"Charme\"', 'Bois blanchi H.67 cm', 0, 59),
(879, 532, 'Table de chevet \"Charme\"', 'Blanc, H.67 cm', 0, 59),
(880, 532, 'Tables gigognes \"Break\"', 'Jaune, L.30/35 cm', 0, 59),
(881, 533, 'Tables gigognes \"Henriette\"', 'Beige, D.35/40 cm', 0, 129),
(882, 533, 'Tables gigognes \"Aldir\"', 'Noir, L.35/ L.42/50 cm', 0, 69),
(883, 533, 'Tables gigognes \"Chrysa\"', 'Pin, Blanc, L.48/60 cm', 0, 79),
(884, 533, 'Tables gigognes \"Chrysa\"', 'Pin, Noir, L.48/60 cm', 0, 79),
(885, 533, 'Tables gigognes \"Kumi\"', 'DorÃ©, D.37/41/45 cm', 0, 59),
(886, 533, 'Tables gigognes \"Alya\"', 'MÃ©tal dorÃ©, D.49/66,5 cm', 0, 89),
(887, 533, 'Tables gigognes \"Ben\"', 'MÃ©tal noir, D.48/60 cm', 0, 69),
(888, 533, 'Tables gigognes \"Atomic\"', 'MÃ©tal et bois, Blanc', 0, 59),
(889, 533, 'Tables gigognes \"Edena\"', 'Acacia, L.30/40/50', 0, 149),
(890, 533, 'Tables gigognes \"Cierna\"', 'MÃ©tal et bois', 0, 129),
(891, 533, 'Tables gigognes \"Thalie\"', 'Verre trempÃ©, HÃªtre', 0, 69),
(892, 533, 'Tables gigognes \"Edena\"', 'Acacia, L.60/120 cm', 0, 299),
(893, 533, 'Tables gigognes \"Mileo\"', 'Noir, L.88/98 cm', 0, 79),
(894, 533, 'Tables gigognes \"Mileo\"', 'Noir, L.34/46/60 cm', 0, 54),
(895, 533, 'Tables gigognes \"Mileo\"', 'Pin, L.88/98 cm', 0, 79),
(896, 533, 'Tables gigognes \"Sacha\"', 'Verre fumÃ©, DorÃ©', 0, 79),
(897, 533, 'Tables gigognes \"Juline\"', 'Blanc, D.41/50 cm', 0, 69),
(898, 533, 'Tables gigognes \"Nolan\"', 'MÃ©tal et rotin', 0, 59),
(899, 533, 'Tables gigognes \"Basile\"', 'Manguier, D.51/56 cm', 0, 179),
(900, 533, 'Tables gigognes \"Basile\"', 'DorÃ©, D.51/56 cm', 0, 179),
(901, 533, 'Tables gigognes \"Aoni\"', 'Rotin, D.40/58 cm', 0, 99),
(902, 533, 'Tables gigognes \"Esther\"', 'Manguier et mÃ©tal', 0, 249),
(903, 533, 'Tables gigognes', 'Blan, plateau marbre', 0, 249),
(904, 533, 'Tables basses gigones\"Mileo\"', 'Noyer, L.88/98 cm', 0, 99),
(905, 533, 'Tables Ã  cafÃ© gigognes \"Mileo\"', 'Noyer, L.40/60 cm', 0, 59),
(906, 533, 'Tables gigognes mÃ©tal', 'MÃ©tal, DorÃ©', 0, 79),
(907, 533, 'Tables gigognes \"Terre\"', 'Bois sculptÃ©', 0, 99),
(908, 533, 'Tables gigognes \"Etnik\"', 'Cuivre, D.34/40 cm', 0, 59),
(909, 533, 'Tables gigognes \"Feuilles\"', 'Noir, D.35 cm/39 cm', 0, 69),
(910, 533, 'Tables gigognes \"Atomic\"', 'Noir, D.30/38/41 cm', 0, 59),
(911, 533, 'Tables gigognes \"Mileo\"', 'Blanc, L.88/98 cm', 0, 79),
(912, 533, 'Tables gigognes \"Mileo\"', 'Jaune, Gris, Blanc, L.34/46/60 cm', 0, 54),
(913, 533, 'Tables gigognes \"Mileo\"', 'Grise, L.34/46/60 cm', 0, 54),
(914, 533, 'Tables gigognes \"Mileo\"', 'Blanc, L.34/46/60 cm', 0, 54),
(915, 533, 'Tables gigognes \"Mileo\"', 'Bois, L.39/47/60 cm', 0, 49),
(916, 533, 'Tables gigognes \"Ilyan\"', 'Bambou, Noir', 0, 49),
(917, 533, 'Tables gigognes \"Ilyan\"', 'Bambou, D.30/37 cm', 0, 49),
(918, 534, 'Table de bar \"Bakos\"', 'Bois et mÃ©tal, 153x80 cm', 0, 299),
(919, 534, 'Table Ã  manger bar \"Roka\"', 'Blanc, L.120 cm', 0, 129),
(920, 534, 'Table Ã  manger bar \"Edena\"', 'Acacia, MÃ©tal, L.115 cm', 0, 199),
(921, 534, 'Table 4 chaises dextÃ©rieur', 'Noir et blanc, D.77,5 cm', 0, 199),
(922, 535, 'Table Ã  manger \"Olbia\"', 'Acacia, blanc, L.200 cm', 0, 499),
(923, 535, 'Table Ã  manger \"Jiling\"', 'Acacia, L.180 cm', 0, 549),
(924, 535, 'Table Ã  manger \"Oliver\"', 'Placage chÃªne, L.160 cm', 0, 299),
(925, 535, 'Table Ã  manger \"Edena\"', 'Acacia, L.180 cm', 0, 249),
(926, 535, 'Table Ã  manger \"Skidal\"', 'MÃ©tal & acacia, 200x100 cm', 0, 599),
(927, 535, 'Table Ã  manger \"Toula\"', 'Placage chÃªne, L.183 cm', 0, 999),
(928, 535, 'Table Ã  manger \"Arden\"', 'Placage frÃªne, L.160 cm', 0, 499),
(929, 535, 'Table Ã  manger bar \"Colva\"', 'Placage effet bois, L.120 cm', 0, 249),
(930, 535, 'Table Ã  manger extensible \"Aeris\"', 'Acacia, L.180-220 cm', 0, 599),
(931, 535, 'Table Ã  manger extensible \"Sabor\"', 'Acacia, L.180-260 cm', 0, 699),
(932, 535, 'Table Ã  manger \"Taho\"', 'Verre trempÃ©, L.150 cm', 0, 149),
(933, 535, 'Table Ã  manger \"Roka\"', 'Blanc, L.150 cm', 0, 149),
(934, 535, 'Table Ã  manger \"Chrysa\"', 'Paulownia, L.180 cm', 0, 299),
(935, 535, 'Table Ã  manger \"Oscar\"', 'Acacia, L.180 cm', 0, 599),
(936, 535, 'Table Ã  manger extensible \"Digha\"', 'ChÃªne, L.200-250 cm', 0, 599),
(937, 535, 'Table Ã  manger \"Rayo\"', 'Blanc effet marbre, DorÃ©, D.120 cm', 0, 249),
(938, 535, 'Table Ã  manger extensible \"Mapu\"', 'Verre trempÃ©, effet marbre, L.160-200 cm', 0, 349),
(939, 535, 'Table Ã  manger \"Roxas\"', 'Blanc effet marbre, L.160 cm', 0, 249),
(940, 535, 'Table Ã  manger \"Arty\"', 'FrÃªne, L.160 cm', 0, 249),
(941, 535, 'Table Ã  manger extensible \"Banila\"', 'Acacia, L.180-260 cm', 0, 599),
(942, 535, 'Table Ã  manger rectangulaire \"Kipos\"', 'MosaÃ¯que, Noir, L.160 cm', 0, 269),
(943, 535, 'Table Ã  manger ronde \"Kipos\"', 'MosaÃ¯que, Noir, D.90 cm', 0, 179),
(944, 535, 'Table Ã  manger \"Steja\"', 'ChÃªne, L.180 cm', 0, 499),
(945, 535, 'Table Ã  manger extensible \"Olaf\"', 'MÃ©tal et bois, L.180-220 cm', 0, 699),
(946, 535, 'Table Ã  manger \"Slano\"', 'MÃ©tal & papier, L.120 cm', 0, 149),
(947, 535, 'Table Ã  manger \"Elias\"', 'ChÃªne, D.100 cm', 0, 179),
(948, 535, 'Table Ã  manger \"Boki\"', 'Manguier, noir, D.120 cm', 0, 499),
(949, 535, 'Table Ã  manger \"Ajmal\"', 'Manguier, L.200 cm', 0, 399),
(950, 535, 'Table Ã  manger \"Colva\"', 'Placage effet bois, L.180 cm', 0, 299),
(951, 536, 'Table dappoint \"Nema\"', 'Beige, D.35 cm', 0, 99),
(952, 536, 'Table dappoint \"Neith\"', 'Manguier, D.35 cm', 0, 99),
(953, 536, 'Table dappoint \"Aldir\"', 'Noir, 40x40 cm', 0, 49),
(954, 536, 'Table dappoint \"Nema\"', 'Vert cÃ¨dre, D.35 cm', 0, 99),
(955, 536, 'Table dappoint \"Ilian\"', 'Marbre gris, D.35 cm', 0, 99),
(956, 536, 'Table dappoint \"Ilian\"', 'Marbre blanc, D.35 cm', 0, 99),
(957, 536, 'Table Ã  cafÃ© \"Palm\"', 'Verre trempÃ©, dorÃ©, D.40 cm', 0, 59),
(958, 536, 'Table Ã  cafÃ© \"Monkey\"', 'Verre trempÃ©, dorÃ©, D.40 cm', 0, 59),
(959, 536, 'Table dappoint \"Edena\"', 'Acacia, 42x42 cm', 0, 69),
(960, 536, 'Table dappoint \"Neile\"', '69x54 cm', 0, 59),
(961, 536, 'Table coffre \"Jordi\" Ã  roulettes', 'Bois et mÃ©tal, 40x39 cm', 0, 24),
(962, 536, 'Table dappoint \"Mileo\"', 'Blanc, D.50 cm', 0, 24),
(963, 536, 'Table dappoint \"Megan\"', 'Marbre, DorÃ©, 46x43 cm', 0, 79),
(964, 536, 'Table dappoint \"Owen\"', 'DorÃ©, D.44 cm', 0, 59),
(965, 536, 'Table dappoint \"Mileo\"', 'Noir, 60x60 cm', 0, 24),
(966, 536, 'Table dappoint \"Paige\"', 'DorÃ©, 52x31 cm', 0, 59),
(967, 536, 'Table dappoint \"Night\"', 'Gris ardoise, D.42,7 cm', 0, 29),
(968, 536, 'Table dappoint \"Diego\"', 'MÃ©tal noir, D.50 cm', 0, 179),
(969, 536, 'Table dappoint \"Diego\"', 'MÃ©tal noir, D.33,5 cm', 0, 49),
(970, 536, 'Table dappoint \"Mathis\"', 'Noir, D.43 cm', 0, 89),
(971, 536, 'Table dappoint \"Gabin\"', 'MÃ©tal noir, D.50 cm', 0, 99),
(972, 536, 'Table dappoint \"Sohan\"', 'Noir, D.36 cm', 0, 79),
(973, 536, 'Table dappoint \"Meeko\"', 'Noir, D.45 cm', 0, 29),
(974, 536, 'Table dappoint \"Kumi\"', 'Noir, D.40 cm', 0, 19),
(975, 536, 'Table dappoint \"Farah\"', 'Rotin, D.59 cm', 0, 149),
(976, 536, 'Table dappoint coffre \"Shiro\"', 'Bleu, D.39 cm', 0, 29),
(977, 536, 'Table dappoint coffre \"Shiro\"', 'Jaune moutarde, D.39 cm', 0, 29),
(978, 536, 'Table dappoint coffre \"Shiro\"', 'Blanc, D.39 cm', 0, 29),
(979, 536, 'Table dappoint \"Kushi\"', 'Noir, D.55 cm', 0, 139),
(980, 536, 'Table dappoint horloge', 'Noir, D.51 cm', 0, 39),
(981, 536, 'Table dappoint \"Kobu\"', 'Noir, D.36 cm', 0, 29),
(982, 536, 'Table dappoint \"Kumi\"', 'DorÃ©, D.40 cm', 0, 15),
(983, 536, 'Table dappoint \"Kumi\"', 'Blanc, D.47 cm', 0, 24),
(984, 536, 'Table dappoint \"Kumi\"', 'Noir, D.47 cm', 0, 24),
(985, 536, 'Table dappoint \"Mileo\"', 'Gris ardoise, 60x60 cm', 0, 24),
(986, 536, 'Table dappoint \"Mileo\"', 'Blanc, 60x60 cm', 0, 24),
(987, 536, 'Table dappoint \"Kumi\"', 'Noir, 40x38 cm', 0, 16),
(988, 536, 'Table dappoint \"Kumi\"', 'Noir, D.40 cm', 0, 15),
(989, 536, 'Table dappoint \"Kumi\"', 'Gris, D.40 cm', 0, 15),
(990, 536, 'Table dappoint \"Kumi\"', 'Blanc, D.40 cm', 0, 15),
(991, 536, 'Table dappoint \"Kumi\"', 'Noir, D.38 cm', 0, 12),
(992, 536, 'Table dappoint \"Kumi\"', 'Gris, D.38 cm', 0, 12),
(993, 536, 'Table dappoint \"Kumi\"', 'Blanc, D.38 cm', 0, 12),
(994, 536, 'Table Ã  cafÃ© \"Neile\"', 'MÃ©tal, 69x54 cm', 0, 59),
(995, 536, 'Table Ã  cafÃ© \"Enola\"', 'Placage frÃªne, D.38,5 cm', 0, 39),
(996, 536, 'Table Ã  cafÃ© \"Enola\"', 'Bois, jaune ocre, D.38,5 cm', 0, 39),
(997, 536, 'Table Ã  cafÃ© \"Enola\"', 'Placage frÃªne, noir, D.38,5 cm', 0, 39),
(998, 536, 'Table Ã  cafÃ© \"Leopard\"', 'Verre trempÃ©, dorÃ©, D.40 cm', 0, 59),
(999, 537, 'Tabouret \"Aoni\"', 'Rotin', 0, 29),
(1000, 538, 'Tabouret de bar \"Lanir\"', 'MÃ©tal & tissu, gris', 0, 39),
(1001, 538, 'Tabouret de bar \"Trecia\"', 'Rotin, blanc', 0, 89),
(1002, 538, 'Tabouret de bar \"Trecia\"', 'Rotin, blanc', 0, 89),
(1003, 538, 'Lot de 2 tabourets de bar \"Joris\"', 'MÃ©tal et bois, Noir', 0, 99),
(1004, 538, 'Lot de 2 tabourets de bar \"Joris\"', 'MÃ©tal et bois, Gris', 0, 99),
(1005, 538, 'Lot de 2 chaises de bar \"Sasha\"', 'Blanc', 0, 139),
(1006, 538, 'Lot de 2 chaises de bar \"Sasha\"', 'Gris', 0, 139),
(1007, 538, 'Lot de 2 chaises de bar \"Sasha\"', 'Noir', 0, 139),
(1008, 538, 'Tabouret de bar \"Otac\"', 'MÃ©tal, Rose terracotta', 0, 39),
(1009, 538, 'Tabouret de bar \"Otac\"', 'MÃ©tal, Noir', 0, 39),
(1010, 538, 'Tabouret de bar \"Otac\"', 'MÃ©tal, Gris', 0, 39),
(1011, 538, 'Tabouret de bar \"Otac\"', 'MÃ©tal, Blanc', 0, 39),
(1012, 538, 'Tabouret de bar \"Loga\" noir', 'MÃ©tal et bois, Noir', 0, 69),
(1013, 538, 'Tabouret de bar \"Nils\"', 'Cuir marron, MÃ©tal', 0, 99),
(1014, 538, 'Tabouret de bar \"Tobias\"', 'Cuir marron, MÃ©tal', 0, 119),
(1015, 538, 'Tabouret de bar \"Joris\"', 'MÃ©tal et bois, Gris', 0, 69),
(1016, 538, 'Tabouret de bar \"Joris\"', 'MÃ©tal et bois, Noir', 0, 69),
(1017, 538, 'Tabouret de bar \"Otac\"', 'MÃ©tal, Jaune moutarde', 0, 39),
(1018, 538, 'Tabouret de bar \"Sumar\"', 'Teck et mÃ©tal', 0, 79),
(1019, 538, 'Tabouret de bar \"Lanir\"', 'MÃ©tal & tissu, bleu', 0, 39),
(1020, 539, 'TÃªte de lit \"Lipka\"', 'Velours, gris foncÃ©, L.160 cm', 0, 149);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `product_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`product_id`, `image_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'client');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mail`, `password`, `surname`, `gender`, `city`, `postal_code`) VALUES
(1, 'Titouan', 'titouane20@gmail.com', 'titi', 'Le Brun', 'M', 'Rennes', '35000');

-- --------------------------------------------------------

--
-- Table structure for table `user_cards`
--

CREATE TABLE `user_cards` (
  `user_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cards`
--

INSERT INTO `user_cards` (`user_id`, `card_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_parent_category` (`parent_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Image_Color` (`id_color`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Product_Category` (`id_category`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Product_Rating` (`id_product`),
  ADD KEY `FK_User_Rating` (`id_user`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cards`
--
ALTER TABLE `user_cards`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_parent_category` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_Image_Color` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_Product_Category` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_images_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `FK_Product_Rating` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FK_User_Rating` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_cards`
--
ALTER TABLE `user_cards`
  ADD CONSTRAINT `user_cards_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_cards_ibfk_2` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
