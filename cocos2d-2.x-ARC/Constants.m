//
//  Constants.c
//  SpaceInvadersExampleComplete
//
//  Created by Barbara Köhler on 9/13/11.
//  Copyright (c) 2011 TUM. All rights reserved.
//

#import "Constants.h"

NSString* const kPlayerImage = @"player.png";
NSString* const kShotImage = @"shot.png";
NSString* const kAlienTestSizeImage = @"alien-small1-anim1.png";
NSString* const kPauseImage = @"pause.png";
NSString* const kEnemyImageTemplate = @"alien-small%i";
NSString* const kAnimationAppendixTemplate = @"-anim%i.png";
NSString* const kSpaceShipImage = @"spaceship.png";
NSString* const kAliensAtlas = @"aliens";

NSString* const kBackgroundMusic = @"backgroundMusic.mp3";

NSString* const kLaserSound = @"lasershot.wav";
NSString* const kExplosionSound = @"explosion.wav";
NSString* const kGameOverSound = @"destroyed.wav";

NSString* const kLeaderBoardIdentifier = @"Clash_Of_Claws_Leaderboard";

NSString* const kAchievement500Score = @"de.tum.in.www1.sgdws13.SpaceInvadersGameCenter.score500";
NSString* const kAchievement1000Score = @"de.tum.in.www1.sgdws13.SpaceInvadersGameCenter.score1000";
NSString* const kAchievement30Sec = @"de.tum.in.www1.sgdws13.SpaceInvadersGameCenter.last30s";
NSString* const kAchievement1Min = @"de.tum.in.www1.sgdws13.SpaceInvadersGameCenter.last1min";

const int kHighscoreItemTag = 8920;
const int kAchievementItemTag = 1920;

// controls how quickly velocity decelerates (lower = quicker to change direction)
const float deceleration = 0.4f;
// determines how sensitive the accelerometer reacts (higher = more sensitive)
const float sensitivity = 6.0f;
// how fast the velocity can be at most
const float maxVelocity = 100;