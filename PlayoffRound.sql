CREATE TABLE PlayoffRound (
     id int(16) NOT NULL,
     team1id int(13) NOT NULL,
     team2id int(13) NOT NULL,
     startTime date NOT NULL,
     endTime date NOT NULL,
     roundNum int(14) NOT NULL,
     PRIMARY KEY (id,startTime)
 );

CREATE TABLE HockeyGame (
    id int(16) NOT NULL,
    roundId int(13) NOT NULL,
    startTime date NOT NULL,
    description text NOT NULL, 
    team1Id int(13) NOT NULL,
    team2Id int(13) NOT NULL,
    PRIMARY KEY (id, startTime)
);

CREATE TABLE GameScores (
    id int(16) NOT NULL,
    team1Score int(14) NOT NULL,
    team2Score int(14) NOT NULL,
    PRIMARY KEY (id, team1Score)

);

CREATE TABLE RoundStats (
    id int(16) NOT NULL,
    numShutouts int(13) NOT NULL,
    goalLeaderId int(13) NOT NULL,
    assistLeaderId int(13) NOT NULL,
    penaltyLeaderId int(13) NOT NULL,
    plusMinusLeaderId int(13) NOT NULL,
    facesoffsWonLeaderId int(13) NOT NULL,
    sogLeaderId int(13) NOT NULL,
    PRIMARY KEY (id, numShutouts)
);

CREATE TABLE HockeyTeam (
    id int(16) NOT NULL,
    name varchar(25) NOT NULL,
    logo text(35) NOT NULL,
    PRIMARY KEY(id,name)
);

CREATE TABLE HockeyTeamPlayer (
    id int(16) NOT NULL,
    hockeyTeamId int(13) NOT NULL,
    firtName text(13) NOT NULL,
    lastName text(13) NOT NULL,
    jerseyNum int(13) NOT NULL,
    position varchar(16) NOT NULL,
    PRIMARY KEY(id, hockeyTeamId)
);

CREATE TABLE UserInfo (
    id int(16) NOT NULL,
    firtsName text(13) NOT NULL,
    lastName text(13) NOT NULL,
    email varchar(13) NOT NULL,
    round1Points int(13) NOT NULL,
    round2Points int(13) NOT NULL,
    round3Points int(13) NOT NULL,
    round4Points int(13) NOT NULL,
    PRIMARY KEY (id, email)
);

CREATE TABLE User (
    id int(16) NOT NULL,
    username varchar(13) NOT NULL,
    password varchar(13) NOT NULL,
    PRIMARY KEY(id, username)
);

CREATE TABLE UserStatsPicks (
    id int(16) NOT NULL,
    roundId int(13) NOT NULL,
    goalLeaderId int(13) NOT NULL,
    assistLeaderId int(13) NOT NULL,
    penaltyLeaderId int(13) NOT NULL,
    plusMinusLeaderId int(13) NOT NULL,
    facesoffsWonLeaderId int(13) NOT NULL,
    sogLeaderId int(13) NOT NULL,
    numShutouts int(13) NOT NULL,
    userId int(13) NOT NULL,
    PRIMARY KEY (id, roundId)
);

CREATE TABLE UserScorePicks (
    id int(13) NOT NULL,
    HockeyGameId int(13) NOT NULL,
    team1Score int(13) NOT NULL,
    team2Score int(13) NOT NULL,
    UserId int(13) NOT NULL,
    PRIMARY KEY(id, HockeyGameId)
);
