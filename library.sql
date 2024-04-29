-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 29, 2024 at 03:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accountId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accountId`, `username`, `password`, `firstName`, `lastName`, `birthday`, `age`, `address`) VALUES
(1, 'admin', 'admin', 'Luffy', 'D. Monkey', '2000-12-31', 22, 'Tokyo'),
(2, 'sonny', 'sonny', 'Son', 'Mimin', '2003-09-20', 19, 'Colorado'),
(3, 'jennie', 'jennie', 'Jennie', 'Kim', '2003-01-01', 20, 'Seoul'),
(4, 'harry', 'harry', 'Harry', 'Styles', '2000-02-22', 24, 'Bekasi'),
(5, 'eren', 'eren', 'Eren', 'Jaeger', '2004-03-30', 19, 'Wall Maria');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookId` int(11) NOT NULL,
  `bookTitle` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publishDate` date NOT NULL,
  `synopsis` varchar(5000) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `bookTitle`, `author`, `publishDate`, `synopsis`, `photo`) VALUES
(1, 'The White Album', 'Joan Didion', '1979-01-01', 'Examining key events, figures, and trends of the era—including Charles Manson, the Black Panthers, and the shopping mall—through the lens of her own spiritual confusion, Joan Didion helped to define mass culture as we now understand it. Written with a commanding sureness of tone and linguistic precision, The White Album is a central text of American reportage and a classic of American autobiography.', 'theWhiteAlbum.jpg'),
(2, 'Death Note – Short Stories ', 'Tsugumi Ohba', '2021-02-02', 'Kira’s story may be over, but the Death Note’s story continues in this collection of short stories penned by the series’ creators.\r\n\r\nKira’s story is over, but the Death Note’s is not…\r\n\r\nIn this imaginative and complete collection of Death Note short stories penned by the series’ creators, discover tales of lives irrevocably changed by the sinister influence of the Death Note, with surprising and thrilling answers to the question of what it truly takes to use the Death Note… or fight it.', 'Volume_1-3_Set.jpg\r\n'),
(3, 'Spy x Family Volume 1-3', 'Tatsuya Endo ', '2021-06-04', 'Master spy Twilight is unparalleled when it comes to going undercover on dangerous missions for the betterment of the world. But when he receives the ultimate assignment—to get married and have a kid—he may finally be in over his head!\r\n\r\nNot one to depend on others, Twilight has his work cut out for him procuring both a wife and a child for his mission to infiltrate an elite private school. What he doesn\'t know is that the wife he\'s chosen is an assassin and the child he\'s adopted is a telepath!', 'cover_DeathNote-ShortStories.jpg'),
(4, 'Chainsaw Man', 'Tatsuki Fujimoto', '2019-03-04', 'Chainsaw Man follows the story of Denji, an impoverished teenager who makes a contract that fuses his body with that of a dog-like Devil named Pochita, granting him the ability to transform parts of his body into chainsaws. Denji eventually joins the Public Safety Devil Hunters, a government agency focused on fighting against Devils whenever they become a threat to Japan. The second arc of the story focuses on Asa Mitaka, a high school student who enters into a contract with Yoru, the War Devil, who forces her to hunt down Chainsaw Man in order to reclaim what he had stolen from her.', 'chainsawman.jpg'),
(5, 'Pride & Prejudice ', 'Jane Austen', '1813-01-28', 'Pride and Prejudice follows the turbulent relationship between Elizabeth Bennet, the daughter of a country gentleman, and Fitzwilliam Darcy, a rich aristocratic landowner. They must overcome the titular sins of pride and prejudice in order to fall in love and marry.', 'pride&prejudice.jpg'),
(6, 'American Psycho', 'Bret Easton Ellis', '1991-03-06', 'Patrick Bateman is twenty-six and he works on Wall Street, he is handsome, sophisticated, charming and intelligent. He is also a psychopath. Taking us to head-on collision with America\'s greatest dream—and its worst nightmare—American Psycho is bleak, bitter, black comedy about a world we all recognise but do not wish to confront.', 'americanPsycho.jpg'),
(7, 'A Clockwork Orange', 'A Clockwork Orange', '1962-01-01', 'In Anthony Burgess\'s influential nightmare vision of the future, criminals take over after dark. Teen gang leader Alex narrates in fantastically inventive slang that echoes the violent intensity of youth rebelling against society. Dazzling and transgressive, A Clockwork Orange is a frightening fable about good and evil and the meaning of human freedom. This edition includes the controversial last chapter not published in the first edition, and Burgess’s introduction, “A Clockwork Orange Resucked.”', 'aClockworkOrange.jpg'),
(8, 'Attack of Titan Volume 5', 'Hajime Isayama', '2011-08-09', 'Thanks to Eren, humanity has taken the town of Trost back from the Titans. Exhausted, Eren falls into a coma for three days – and wakes in shackles, staring at Erwin Smith, leader of the Survey Corps. Certain that Eren\'s father\'s research holds the key to the mystery of the Titans’ rise, Smith wants an expedition to retrieve it from the house where Eren grew up. But that’s deep in Titan territory, and to get there Eren will need to master a power he still doesn’t fully understand.', 'aot5.jpg'),
(9, 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', '1997-06-26', 'Harry Potter thinks he is an ordinary boy - until he is rescued by an owl, taken to Hogwarts School of Witchcraft and Wizardry, learns to play Quidditch and does battle in a deadly duel. The Reason ... HARRY POTTER IS A WIZARD!', 'Harry_Potter_and_the_Philosopher_s_Stone.jpg'),
(10, 'Jaws', 'Peter Benchley', '1974-05-06', 'The classic, blockbuster thriller of man-eating terror that inspired the Steven Spielberg movie and made millions of beachgoers afraid to go into the water. Experience the thrill of helpless horror again—or for the first time!', 'jaws.png'),
(11, 'Boruto: Naruto Next Generations', 'Masashi Kishimoto, Ukyo Kodachi', '2016-05-09', 'Naruto Uzumaki has finally achieved his dream of becoming Hokage, the leader of the Hidden Leaf Village that he spent his teenage years fighting to protect. Naruto and his peers now live in a world of peace, working hard to uphold an international truce built on good will and diplomacy.\r\n\r\nHowever, this stasis comes at a personal cost for the aging hero. Naruto and the shinobi he grew up alongside find that working to upkeep the neutral world takes them away from their families, and even the legendary warriors of Naruto\'s generation must contend with being mediocre parents to their bitter children, including his own son Boruto.\r\n\r\nBoruto Uzumaki faces a world completely unlike that of his father, finding unique trouble in the distance between the two. Contending with a society that heaps an unbearable load of pressure on his shoulders over his status as the Hokage\'s son, Boruto carves his own path through the world, fighting to make a name for himself as evil forces threaten to shatter the peace his father helped create.', 'boruto.jpg'),
(12, 'Little Women', 'Louisa May Alcott', '1868-09-30', 'It is no surprise that Little Women, the adored classic of four devoted sisters, has been an avidly read tale for generations. Follow the sisters from innocent adolescence to sage adulthood, with all the joy and sorrow of life in between. Your life won’t be the same once you’ve met Meg, Jo, Beth, and Amy.', 'littlewomen.jpeg'),
(13, 'The Shadow of the Wind', 'Carlos Ruiz Zafón', '2005-02-01', 'Barcelona, 1945: In the aftermath of the Spanish Civil War, Daniel mourns the loss of his mother and stumbles upon a mysterious book entitled The Shadow of the Wind, by one Julián Carax. But when he sets out to find the author’s other works, he makes a shocking discovery: someone has been systematically destroying every copy of every book Carax has written. In fact, Daniel may have the last of Carax’s books in existence. Soon Daniel’s seemingly innocent quest opens a door into one of Barcelona’s darkest secrets — an epic story of murder, madness, and doomed love.', 'tsotw.jpeg'),
(14, 'Normal People', 'Sally Rooney', '2018-08-28', 'Connell and Marianne grew up in the same small town, but the similarities end there. At school, Connell is popular and well liked, while Marianne is a loner. But when the two strike up a conversation — awkward but electrifying — something life changing begins. Normal People is the story of mutual fascination, friendship, and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find that they can’t.', 'normalpeople.jpg'),
(15, 'The Lord of the Rings: The Fellowship of the Ring', 'John Ronald Reuel Tolkien', '1954-07-29', 'The story unfolds in the peaceful Shire, home to the Hobbits, an unassuming yet resilient folk. Frodo Baggins, our unsuspecting hero, inherits a mysterious ring from his uncle Bilbo. This ring, however, is revealed to be the One Ring, imbued with the power to control the other Rings of Power and coveted by the dark lord Sauron. To thwart Sauron’s malevolent designs, Frodo must embark on a perilous journey to destroy the Ring in the fires of Mount Doom. Joined by his loyal friends Sam, Merry, and Pippin, and later by a fellowship comprising representatives of Middle-earth’s free peoples, Frodo’s quest becomes a battle for the very soul of the world. Themes of friendship, sacrifice, and the struggle against overwhelming darkness pervade this epic.', 'tlotr.jpeg'),
(16, 'The Alchemist', 'Paulo Coelho', '1988-01-01', 'sadadsadasd', 'alchemist.jpeg'),
(17, 'Meditations', 'Marcus Aurelius', '1900-01-01', 'As a collection of Marcus Aurelius\'s philosophical reflections, Meditations doesn\'t have a coherent plot structure, but each of its 12 books focuses on several recurrent themes—living a philosophical life, social relationships, nature and the gods, and mortality.', 'meditations.jpeg'),
(18, 'The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', '1892-10-14', 'The Adventures of Sherlock Holmes is perhaps the greatest collection of detective stories ever written. From his residence at 221B Baker Street, Sherlock Holmes solves a series of baffling and bizarre cases, including those of a man terrified by the arrival of an envelope containing orange pips, and a woman whose fiancé disappeared on his way to their wedding. Each story showcases the great detective\'s inimitable and extraordinary deductive powers, recounted to us by his faithful friend and colleague, Dr Watson.', 'sherlockholmes.png'),
(19, 'Gone Girl', 'Gillian Flynn', '2012-05-24', 'This twisty psychological thriller became a phenomenon when it was published, selling over twenty million copies worldwide and being adapted into a hit film starring Ben Affleck and Rosamund Pike. When Nick Dunne wakes up on the morning of his fifth wedding anniversary to find his wife missing, he quickly becomes the police’s chief suspect. Amy’s friends reveal she was afraid of him, there are strange searches on his computer and persistent calls to his mobile phone, but Ben swears he knows nothing about any of this. So what really happened to Amy Dunne?', 'gonegirl.jpg'),
(20, 'IT', 'Stephen King', '1986-09-15', '‘It’ begins with two brothers, Bill and George, making a boat so they can play with it. Bill, the older brother, stays at home due to being sick after the heavy rainstorm that occurred in Derry. George goes out to play with his new boat and gets killed by a clown who called himself Pennywise. Set to uncover the truth behind his brother’s death, Bill goes on an investigation after encountering Pennywise in the form of George’s ghost.\r\n\r\nAlong with six other children who also had an encounter with Pennywise in different forms, Bill forms a group known as the losers club. The group comprising of Bill, Eddie, Beverly, Ben, Richie, Mike, and Stan, uncovers the secrets of an ancient evil that had always been in Derry. Calling it ‘It,’ They set out on a mission, to get rid of the evil terrorizing Derry. The group then makes a promise to return if It ever showed up again.', 'it.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrowId` int(11) NOT NULL,
  `borrowDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  `accountId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `isReturned` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrowId`, `borrowDate`, `returnDate`, `accountId`, `bookId`, `isReturned`) VALUES
(8, '2024-04-28', NULL, 2, 3, 0),
(9, '2024-04-28', '2024-04-30', 2, 8, 1),
(10, '2024-04-28', NULL, 2, 2, 0),
(11, '2024-04-28', '2024-05-01', 3, 5, 1),
(12, '2024-04-28', '2024-05-05', 4, 19, 1),
(13, '2024-04-28', '2024-05-04', 5, 2, 1),
(14, '2024-04-28', NULL, 5, 4, 0),
(15, '2024-04-28', NULL, 5, 6, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accountId`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrowId`),
  ADD KEY `adding_forkey` (`accountId`),
  ADD KEY `adding_forkey2` (`bookId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `accountId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrowId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrow`
--
ALTER TABLE `borrow`
  ADD CONSTRAINT `adding_forkey` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`accountId`),
  ADD CONSTRAINT `adding_forkey2` FOREIGN KEY (`bookId`) REFERENCES `books` (`bookId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
