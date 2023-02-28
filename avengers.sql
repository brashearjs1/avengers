-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: avengers
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `character_Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HeroName` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bio` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Power` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `HairColor` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstAppearance` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`character_Id`),
  UNIQUE KEY `character_id_UNIQUE` (`character_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,'Anthony Edward \"Tony\" Stark','Iron Man','Tony Stark is the wealthy son of industrialist and weapons manufacturer Howard Stark and his wife, Maria. Tony grew up a genius with a brilliant mind for technology and inventions and, naturally, followed in his father\'s footsteps, inheriting Stark Industries upon his parents\' untimely death.','Extreme knowledge and technological skills','Black','Male','Iron Man 1'),(2,'Natasha Romanoff','Black Widow','Natalia Alianovna Romanoff was born on December 3, 1984 in Stalingrad, Russia. As an infant, she was deemed by the Red Room to possess genetic potential, and was purchased from her birth family.','master in the covert arts of espionage, infiltration, and subterfuge','Red','Female','Iron Man 2'),(3,'Thor Odinson','Thor: God of Thunder','Thor was born to the King of the Asgardian Gods, Odin Borson, and the Earth Goddess Gaea. He grew up in Asgard under Odin\'s tutelage and trained in his footsteps to one day lead Asgard. ... During his time in Asgard, Odin casted Thor into the mortal guise of Siegmund to retrieve the Rhinegold Ring from the dragon Fafnir.',' superhuman strength, speed, agility, durability and immunity to most diseases, and the ability to harness lightning','Blonde','Male','Thor(2011)'),(4,'Steve Rogers','Captain America','Steven Grant Rogers was born in Brooklyn, New York on July 4th, 1918 to Sarah and Joseph Rogers. His father was an Army soldier who fought and died in the First World War. His mother, a nurse, died of tuberculosis.','super strength, enhance stamina','Blonde','Male','Captain America: The first Avenger'),(5,'Clint Barton','HawkEye','The man who would become known as Hawkeye was born Clint Barton. Orphaned at an early age, he joined the circus and apprenticed himself to the Swordsman, a performer who specialized in tricks with blades. After he discovered the Swordsman stealing from the circus, the two fought, and Barton was left for dead.','Master archer and marksman Expert tactician, acrobat and hand-to-hand combatant and super strength','Blonde','Male','Thor'),(6,'Bruce Banner','The Hulk','Robert Bruce Banner was born on December 18, 1969, to Dr. Brian Banner, an atomic scientist, and his wife Rebecca. He suffered gamma exposure and changes to the Hulk whenever he is angered','Super strength','Black','Male','The Incredible Hulk(2008)');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `film_Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Plot` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Producer` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Director` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ReleaseDate` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ChronologicalTimeline` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`film_Id`),
  UNIQUE KEY `films_id_UNIQUE` (`film_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'Iron Man 1','2008\'s Iron Man tells the story of Tony Stark, a billionaire industrialist and genius inventor who is kidnapped and forced to build a devastating weapon. Instead, using his intelligence and ingenuity, Tony builds a high-tech suit of armor and escapes captivity. When he uncovers a nefarious plot with global implications, he dons his powerful armor and vows to protect the world as Iron Man.','Kevin Feige','Jon Favreau','May 8, 2008','3'),(2,'Iron Man 2','With the world now aware that he is Iron Man, billionaire inventor Tony Stark faces pressure from all sides to share his technology with the military. He is reluctant to divulge the secrets of his armored suit, fearing the information will fall into the wrong hands. With Pepper Potts and \"Rhodey\" Rhodes by his side, Tony must forge new alliances and confront a powerful new enemy.','Kevin Feige ','Jon Favreau','May 7, 2010','4'),(3,'Iron Man 3','Marvel\'s Iron Man 3 pits brash-but-brilliant industrialist Tony Stark/Iron Man against an enemy whose reach knows no bounds. When Stark finds his personal world destroyed at his enemy\'s hands, he embarks on a harrowing quest to find those responsible. This journey, at every turn, will test his mettle. With his back against the wall, Stark is left to survive by his own devices, relying on his ingenuity and instincts to protect those closest to him. As he fights his way back, Stark discovers the answer to the question that has secretly haunted him: does the man make the suit or does the suit make the man?','Kevin Feige','Shane Black','May 3, 2013','8'),(4,'Captain America: The First Avenger','It is 1941 and the world is in the throes of war. Steve Rogers (Chris Evans) wants to do his part and join America\'s armed forces, but the military rejects him because of his small stature. Finally, Steve gets his chance when he is accepted into an experimental program that turns him into a supersoldier called Captain America. Joining forces with Bucky Barnes (Sebastian Stan) and Peggy Carter (Hayley Atwell), Captain America leads the fight against the Nazi-backed HYDRA organization.','Kevin Feige','Joe Johnston','July 22, 2011','1'),(5,'Captain America: The Winter Soldier','After the cataclysmic events in New York with his fellow Avengers, Steve Rogers, aka Captain America (Chris Evans), lives in the nation\'s capital as he tries to adjust to modern times. An attack on a S.H.I.E.L.D. colleague throws Rogers into a web of intrigue that places the whole world at risk. Joining forces with the Black Widow (Scarlett Johansson) and a new ally, the Falcon, Rogers struggles to expose an ever-widening conspiracy, but he and his team soon come up against an unexpected enemy.','Kevin Feige','Anthony and Joe Russo','April 4, 2014','10'),(6,'Captain America: Civil War','Political pressure mounts to install a system of accountability when the actions of the Avengers lead to collateral damage. The new status quo deeply divides members of the team. Captain America (Chris Evans) believes superheroes should remain free to defend humanity without government interference. Iron Man (Robert Downey Jr.) sharply disagrees and supports oversight. As the debate escalates into an all-out feud, Black Widow (Scarlett Johansson) and Hawkeye (Jeremy Renner) must pick a side.','Kevin Feige','Anthony and Joe Russo','May 6, 2016','15'),(7,'The Incredible Hulk','Scientist Bruce Banner (Edward Norton) desperately seeks a cure for the gamma radiation that contaminated his cells and turned him into The Hulk. Cut off from his true love Betty Ross (Liv Tyler) and forced to hide from his nemesis, Gen. Thunderbolt Ross (William Hurt), Banner soon comes face-to-face with a new threat: a supremely powerful enemy known as The Abomination (Tim Roth). ','Avi Arad, Kevin Feige','Louis Leterrier','June 13, 2008','5'),(8,'The Avengers','When Thor\'s evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth. Joining Fury\'s \"dream team\" are Iron Man (Robert Downey Jr.), Captain America (Chris Evans), the Hulk (Mark Ruffalo), Thor (Chris Hemsworth), the Black Widow (Scarlett Johansson) and Hawkeye (Jeremy Renner).','Kevin Feige','Joss Whedon','May 4, 2012','7'),(9,'Avengers: Age of Ultron','When Tony Stark (Robert Downey Jr.) jump-starts a dormant peacekeeping program, things go terribly awry, forcing him, Thor (Chris Hemsworth), the Incredible Hulk (Mark Ruffalo) and the rest of the Avengers to reassemble. As the fate of Earth hangs in the balance, the team is put to the ultimate test as they battle Ultron, a technological terror hell-bent on human extinction. Along the way, they encounter two mysterious and powerful newcomers, Pietro and Wanda Maximoff.','Kevin Feige','Joss Whedon','May 1, 2015','13'),(10,'Avengers: Infinity War','Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.','Kevin Feige','Anthony and Joe Russo','April 27, 2018','22'),(11,'Avengers: Endgame','Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos -- the evil demigod who decimated the planet and the universe.','Kevin Feige','Anthony and Joe Russo','April 26, 2019','23'),(12,'Thor','As the son of Odin (Anthony Hopkins), king of the Norse gods, Thor (Chris Hemsworth) will soon inherit the throne of Asgard from his aging father. However, on the day that he is to be crowned, Thor reacts with brutality when the gods\' enemies, the Frost Giants, enter the palace in violation of their treaty. As punishment, Odin banishes Thor to Earth. While Loki (Tom Hiddleston), Thor\'s brother, plots mischief in Asgard, Thor, now stripped of his powers, faces his greatest threat.','Kevin Feige','Kenneth Branagh','May 6, 2011','6'),(13,'Thor: The Dark World','In ancient times, the gods of Asgard fought and won a war against an evil race known as the Dark Elves. The survivors were neutralized, and their ultimate weapon -- the Aether -- was buried in a secret location. Hundreds of years later, Jane Foster (Natalie Portman) finds the Aether and becomes its host, forcing Thor (Chris Hemsworth) to bring her to Asgard before Dark Elf Malekith (Christopher Eccleston) captures her and uses the weapon to destroy the Nine Realms -- including Earth.','Kevin Feige','Alan Taylor','November 8, 2013','9'),(14,'Thor: Ragnarok','Imprisoned on the other side of the universe, the mighty Thor finds himself in a deadly gladiatorial contest that pits him against the Hulk, his former ally and fellow Avenger. Thor\'s quest for survival leads him in a race against time to prevent the all-powerful Hela from destroying his home world and the Asgardian civilization.','Kevin Feige','Taika Waititi','November 3, 2017','20'),(15,'Black Widow','Natasha Romanoff, aka Black Widow, confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises. Pursued by a force that will stop at nothing to bring her down, Natasha must deal with her history as a spy, and the broken relationships left in her wake long before she became an Avenger.','Kevin Feige','Cate Shortland','July 9, 2021','18'),(16,'Thor: Love and Thunder','idk yet','Kevin Feige','Taiki Waititi','July 8, 2022','30');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dennis123','dennisiscool'),(2,'jacob12345','dennisiscool!'),(3,'brashearjs','Jb4792sd'),(4,'reneep','dennisiscool'),(5,'natemagz','Dennisiskewl'),(6,'gus_1','Dennisiscool!');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 13:03:42
