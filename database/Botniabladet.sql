CREATE TABLE `Photo`
(
  `photoID` int PRIMARY KEY,
  `previewBlob` blob NOT NULL,
  `fullBlob` longblob NOT NULL,
  `uploader` int,
  `uploadDate` date NOT NULL,
  `usagesRemaining` int
);

CREATE TABLE `User`
(
  `userID` int PRIMARY KEY,
  `name` varchar(255),
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
);

CREATE TABLE `Tag`
(
  `tagID` varchar(255) PRIMARY KEY
);

CREATE TABLE `Photo_Tag`
(
  `photoTagID` int PRIMARY KEY,
  `photoID` int,
  `tagID` varchar(255)
);

CREATE TABLE `Publish`
(
  `publishID` int PRIMARY KEY,
  `publishDate` date,
  `photoID` int,
  `journalist` varchar(255),
  `title` varchar(255),
  `description` varchar(255)
);

ALTER TABLE `Photo` ADD FOREIGN KEY (`uploader`) REFERENCES `User` (`userID`);

ALTER TABLE `Photo_Tag` ADD FOREIGN KEY (`photoID`) REFERENCES `Photo` (`photoID`);

ALTER TABLE `Photo_Tag` ADD FOREIGN KEY (`tagID`) REFERENCES `Tag` (`tagID`);

ALTER TABLE `Publish` ADD FOREIGN KEY (`photoID`) REFERENCES `Photo` (`photoID`);
