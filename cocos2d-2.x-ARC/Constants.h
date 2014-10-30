//
//  Constants.h
//  SpaceInvadersExampleComplete
//
//  Created by Barbara Köhler on 9/9/11.
//  Copyright (c) 2011 TUM. All rights reserved.
//

#ifndef SpaceInvadersExampleComplete_Constants_h
#define SpaceInvadersExampleComplete_Constants_h

// Enum that determines the drawing order into the z-Buffer
// The higher the value the further in the front sth is drawn
enum {
    kBulletZ,
    kPlayerZ,
    kEnemyZ,
    kParticleEffectZ,
    kHUDZ
};

extern NSString* const kPlayerImage;
extern NSString* const kShotImage;
extern NSString* const kAlienTestSizeImage;
extern NSString* const kPauseImage;
extern NSString* const kEnemyImageTemplate;
extern NSString* const kAnimationAppendixTemplate;
extern NSString* const kSpaceShipImage;
extern NSString* const kAliensAtlas;

extern NSString* const kBackgroundMusic;

extern NSString* const kLaserSound;
extern NSString* const kExplosionSound;
extern NSString* const kGameOverSound;

extern NSString* const kLeaderBoardIdentifier;
extern NSString* const kAchievement500Score;
extern NSString* const kAchievement1000Score;
extern NSString* const kAchievement30Sec;
extern NSString* const kAchievement1Min;

const int kHighscoreItemTag;
const int kAchievementItemTag;

// controls how quickly velocity decelerates (lower = quicker to change direction)
const float deceleration;
// determines how sensitive the accelerometer reacts (higher = more sensitive)
const float sensitivity;
// how fast the velocity can be at most
const float maxVelocity;

#define ARC4RANDOM_MAX      0x100000000

#endif