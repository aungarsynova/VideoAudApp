-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 15 2019 г., 01:37
-- Версия сервера: 5.7.21
-- Версия PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `roku_flashback`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
CREATE TABLE IF NOT EXISTS `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_audio`
--

DROP TABLE IF EXISTS `tbl_audio`;
CREATE TABLE IF NOT EXISTS `tbl_audio` (
  `audio_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `audio_title` varchar(125) DEFAULT NULL,
  `audio_year` varchar(5) DEFAULT NULL,
  `audio_storyline` text,
  `audio_artist` varchar(75) DEFAULT NULL,
  `audio_cover` varchar(75) DEFAULT 'temp_cover.jpg',
  `audio_src` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`audio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_audio`
--

INSERT INTO `tbl_audio` (`audio_id`, `audio_title`, `audio_year`, `audio_storyline`, `audio_artist`, `audio_cover`, `audio_src`) VALUES
(1, 'That\'s Amore', '1953', '\"That\'s Amore\" is a 1953 song by composer Harry Warren and lyricist Jack Brooks. It became a major hit and signature song for Dean Martin in 1953. Amore means \"love\" in Italian.', 'Dean Martin', 'amore.jpg', 'Amore.mp3'),
(2, 'I Walk The Line', '1956', '\"I Walk the Line\" is a song written and recorded in 1956 by Johnny Cash. After three attempts with moderate chart ratings, it became Cash\'s first number one hit on the Billboard charts. It reached number 17 on the US pop charts. It remained on the record charts for over 43 weeks, and sold over 2 million copies.', 'Johnny Cash', 'walkTheLine.jpg', 'walkTheLine.mp3'),
(3, 'All Shook Up', '1957', '\"Bombtrack\" is a song by American rap metal band Rage Against the Machine that opens their self-titled debut album. Like most of Rage Against the Machine\'s songs, the song\'s lyrics discuss social inequality, proclaiming that \"landlords and power whores\" were going to \"burn\". The riffs were composed by Rage Against the Machine bassist Tim Commerford. Impressed by their song, Rage Against the Machine named it Bombtrack in reference to hip hop terminology where the word \'bomb\' means \'the greatest\', making the song title literally mean \'the greatest track\'.', 'Elvis Preasley', 'allShookUp.jpg', 'allShookUp.mp3'),
(4, 'Baby\'s On Fire', '1973', '“Baby\'s on Fire” is barely a song, in the conventional sense—two chords mercilessly alternating for five minutes, a single snatch of melody repeated with almost no variation, a lyric that sidles around clear sense, and a guitar solo that takes up more than half of its running time. It divided the listeners of Eno’s first solo album, Here Come the Warm Jets, into those who got it and those who were left eating its ashes.', 'Brian Eno', 'babyIsOnFire.jpg', 'Fire.mp3'),
(5, 'Hyperballad', '1995', '\"Hyperballad\" is about trying to negotiate a balance of loving commitment and fierce independence as a way of avoiding ever having to become the subject one of those break-up songs. Björk\'s character describes a private ritual she\'s created for herself-- throwing objects off a cliff; a morbid routine that satisfies a need for solitude and allows her to maintain a sense of self within her relationship.', 'Björk', 'hyperballad.jpg', 'Hyperballad.mp3'),
(6, 'Mind Your Own Business', '1979', 'When guitarist Julz Sale, bassist Ros Allen, and other bassist Bethan Peters came together to form Delta 5 in 1979, they decided to double up on the low end because, as Allen has said, “neither of us played guitar, and we thought it would make the music more exciting.” They were not wrong.', 'Delta 5', 'mindYourOwnBusiness.jpg', 'Delta5.mp3'),
(7, 'Running Up That Hill', '1985', 'After a half decade spent wandering the forests of art-damage, Kate Bush re-emerged with one of the most warmhearted distillations of desire ever committed to pop. Compassion was in short supply in the Britain of 1985; meanwhile \"Running Up That Hill\" longs to be understood, but to better understand someone else, too, capturing the balancing act in its tussle between atavism and futurism, vulnerability and might, empathy and lust.', 'Kate Bush', 'runningUpThatHill.jpg', 'Hill.mp3'),
(8, 'Smells Like Teen Spirit', '1991', 'More than any single song, \"Smells Like Teen Spirit\" altered the face of the 90s. You\'ll hear people push revisionist history saying otherwise, but it did. When \"Teen Spirit\" was released in September 1991, albums from future alt-rock titans Pearl Jam (Ten) and the Smashing Pumpkins (Gish) were already gathering dust on record shelves.', 'Nirvana', 'smellsLikeTeenSpirit.jpg', 'Spirit.mp3'),
(9, 'Stychnine', '1965', 'A song about drinking rat poison and liking it more than either water or wine. Garage-rock proto-punks the Sonics—without their raw fuzzed-buzz and Gerry Roslie’s roll’n’roll howl—played rock that couldn’t help but shock and awe. –Zach Baron', 'The Sonics', 'Strychnine.jpg', 'Sonics.mp3'),
(10, 'Sunny Afternoon', '1994', 'While already rightly revered as bratty garage rockers by the time of this track’s release, the Kinks truly excelled when singer Ray Davies took a more observational, wry approach to songwriting—and “Sunny Afternoon” is one of his wriest on record. As the song’s ground-down, sadsack narrator, Davies sounds utterly exhausted by the task of telling his miserable tale, backed by a descending chromatic bassline that nearly flatlines by song’s end. –Adam Moerder', 'The Kinks', 'sunnyAfternoon.jpg', 'Afternoon.mp3'),
(11, 'Walk on By', '1964', 'People talk about “perfect pop” and I generally have no idea what they’re talking about. “Walk on By” is perfect pop, though, in the strictest sense: not a hair is out of place, no smudged eyeliner, nothing to taint its inherent loveliness. Any Bacharach/Warwick collaboration is a pick hit to click, but this is the most famous for a reason. Poised to the brink of formality, the song moves with the utterly unhurried grace of a woman in a ball gown. Perfect composure is one way to keep the tears inside, after all. –Jess Harvell', 'Dionne Warwick', 'walkOnBy.jpg', 'WalkOn.mp3'),
(12, 'Wanna Be Startin\' Something', '1983', 'Wanna Be Startin’ Somethin’\" supports the weight of Michael Jackson’s transition from funky boy wonder to Thriller\'s omnivorous pop demi-god, builds a bridge between his precocious past and troubled future. Off the Wall had sealed Jackson’s solo stardom three years earlier, but it’s music for the end of adolescence rather than the beginning of adulthood. ', 'Michael Jackson', 'wannaBeStartinSomethin.jpg', 'Startin.mp3'),
(13, 'Blue', '1998', '\"Blue\" is a song by Italian music group Eiffel 65. It was first released in October 1998 in Italy by Bliss Corporation and became internationally successful the following year.It is the lead single of their debut album Europop. The song is the group\'s most popular single, reaching number one in many countries such as Ireland, the United Kingdom, the Netherlands, France, Sweden, Switzerland, New Zealand, Finland, Norway, Australia, Germany and Hungary, as well as reaching number six on the Billboard Hot 100 in the United States.', 'Eiffel 65', 'blue.jpg', 'Blue.mp3');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` smallint(3) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
CREATE TABLE IF NOT EXISTS `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'AllAboutEve.jpg', 'All about Eve', '1950', '2hr 18min', 'Much-loved, lengthy, acerbic drama of theatre life about a young actress who insinuates her way into Broadway stage star\'s life. ', 'Eve.mp4', '1950'),
(2, 'Shane.jpg', 'Shane', '1953', '1hr 58min', 'A weary gunfighter attempts to settle down with a homestead family, but a smoldering settler/rancher conflict forces him to act.', 'Shane.mp4', '1953'),
(3, 'SunsetBlvd.jpg', 'Sunset Boulevard', '1950', '1hr 50min', 'A screenwriter is hired to rework a faded silent film star\'s script, only to find himself developing a dangerous relationship.', 'Blvd.mp4', '1950'),
(4, 'HighNoon.jpg', 'High Noon', '1952', '1hr 25min', 'A town Marshal, despite the disagreements of his newlywed bride and the townspeople around him, must face a gang of deadly killers alone at high noon when the gang leader, an outlaw he sent up years ago, arrives on the noon train.', 'HighNoon.mp4', '1952'),
(5, 'Giant.jpg', 'Giant', '1956', '3hr 21min', 'Sprawling epic covering the life of a Texas cattle rancher and his family and associates.', 'Giant.mp4', '1956'),
(6, 'theApt.jpg', 'The Apartment', '1960', '2hr 2min', ' man tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.', 'Apartment.mp4', '1960'),
(7, 'theWind.jpg', 'Inherit The Wind', '1960', '2hr 8min', 'Based on a real-life case in 1925, two great lawyers argue the case for and against a science teacher accused of the crime of teaching evolution.', 'https://www.youtube.com/watch?v=dW0vtST5BB0', '1960'),
(8, 'laDolceVita.jpg', 'La Dolce Vita', '1960', '2hr 55mins', 'A series of stories following a week in the life of a philandering paparazzo journalist living in Rome.', 'Dolce.mp4', '1960'),
(9, 'spartacus.jpg', 'Spartacus', '1960', '3hr 17mins', 'The slave Spartacus leads a violent revolt against the decadent Roman Republic.', 'Spartacus.mp4', '1960'),
(10, '123.jpg', 'One, Two, Three', '1961', '1hr 41mins', 'In West Berlin during the Cold War, a Coca-Cola executive is given the task of taking care of his boss\' socialite daughter.', '123.mp4', '1961'),
(11, 'taxiDriver.jpg', 'Taxi Driver', '1976', '1hr 54mins', 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.', 'Taxi.mp4', '1976'),
(12, 'meanstreets.jpg', 'Mean Streets', '1973', '1h 57m', 'A small-time hood aspires to work his way up the ranks of a local mob.', 'MeanStreets.mp4', '1973'),
(13, 'chinatown.jpeg', 'Chinatown', '1974', '2h 3m', 'A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption, and murder.', 'Chinatown', '1974'),
(14, 'nest.jpg', 'One Flew Over The Cuckoos Nest', '1975', '1h 46m', 'A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.', 'Nest.mp4', '1975'),
(15, 'father.jpg', 'The Godfather', '1975', '2h 16m', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'Godfather', '1975'),
(16, 'et.jpg', 'E.T', '1982', '1h 47m', 'A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.', 'ET.mp4', '1982'),
(17, 'amadeus.jpg', 'Amadeus', '1984', '2h 1m', 'The life, success and troubles of Wolfgang Amadeus Mozart, as told by Antonio Salieri, the contemporary composer who was insanely jealous of Mozart\'s talent and claimed to have murdered him.', 'Amadeus.mp4', '1984'),
(18, 'platoon.jpg', 'Platoon', '1986', '1h 30m', 'A young soldier in Vietnam faces a moral crisis when confronted with the horrors of war and the duality of man.', 'Platoon.mp4', '1986'),
(19, 'runner.jpg', 'Blade Runner', '1982', '1h 31m', 'A blade runner must pursue and terminate four replicants who stole a ship in space, and have returned to Earth to find their creator.', 'Blade.mp4', '1982'),
(20, 'elephant.jpg', 'The Elephant Man', '1980', '2h 7m', 'A Victorian surgeon rescues a heavily disfigured man who is mistreated while scraping a living as a side-show freak. Behind his monstrous façade, there is revealed a person of intelligence and sensitivity.', 'Elephant.mp4', '1980'),
(21, 'theshining.jpg', 'The Shining', '1980', '2h 2m', 'A family heads to an isolated hotel for the winter where an evil spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.', 'Shining.mp4', '1980');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_mov_country`
--

DROP TABLE IF EXISTS `tbl_mov_country`;
CREATE TABLE IF NOT EXISTS `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
CREATE TABLE IF NOT EXISTS `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_mov_lang`
--

DROP TABLE IF EXISTS `tbl_mov_lang`;
CREATE TABLE IF NOT EXISTS `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_mov_studio`
--

DROP TABLE IF EXISTS `tbl_mov_studio`;
CREATE TABLE IF NOT EXISTS `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_studio`
--

DROP TABLE IF EXISTS `tbl_studio`;
CREATE TABLE IF NOT EXISTS `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_urating`
--

DROP TABLE IF EXISTS `tbl_urating`;
CREATE TABLE IF NOT EXISTS `tbl_urating` (
  `rating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating_number` tinyint(4) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_access` tinyint(4) DEFAULT NULL,
  `user_admin` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_access`, `user_admin`) VALUES
(1, 'jane', 'janedoe', 'password', 'a@a.com', '2019-02-07 21:43:04', '::1', 5, 1),
(2, 'john', 'johndoe', 'password', 'a@a.com', '2019-02-07 21:43:04', 'no', 3, 0),
(3, 'jimmy', 'jimmydoe', 'password', 'a@a.com', '2019-02-07 21:43:04', 'no', 2, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
