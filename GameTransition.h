//
//  GameTransition.h
//  DoodleClaw
//
//  Created by HoodsDream on 3/4/14.
//  Copyright 2014 __MyCompanyName__. All rights reserved.
//




#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import <iAd/iAd.h>


@interface GameTransition : CCLayer {
    
    CCSprite *background;
    CCSprite *claw;
    CCSprite *circle;
    CCSprite *presshold;
    CCSprite *caution;
    CCSprite *ex1;
    CCSprite *ex2;
    CCSprite *ex3;
    CCSprite *ex4;
    CCSprite *check;
    
    
    
}

@property (nonatomic, assign) BOOL greenIsSelected;
@property (nonatomic, assign) BOOL blueIsSelected;
@property (nonatomic, assign) BOOL pinkIsSelected;
@property (nonatomic, assign) BOOL purpleIsSelected;
@property (nonatomic, assign) BOOL orangeIsSelected;

+(id)scene;


@end