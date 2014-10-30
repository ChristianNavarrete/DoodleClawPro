//
//  GameTransition.m
//  DoodleClaw
//
//  Created by HoodsDream on 3/4/14.
//  Copyright 2014 __MyCompanyName__. All rights reserved.
//

#import "GameLayer.h"
#import "GameTransition.h"
#import "StartMenu.h"
#import "GameLayerBlue.h"
#import "GameLayerPink.h"
#import "GameLayerPurple.h"
#import "GameLayerOrange.h"




@implementation GameTransition {
    
}


+(id) scene
{
    
    CCScene *scene = [CCScene node];
    CCLayer *layer = [GameTransition node];
    [scene addChild:layer];
    return scene;
}


-(id) init
{
    if( (self=[super init]))
    {
        
        [self scheduleUpdate];
        
        _greenIsSelected = YES;
        _blueIsSelected = NO;
        _pinkIsSelected = NO;
        _purpleIsSelected = NO;
        _orangeIsSelected = NO;

        
        CGSize screenSize = [CCDirector sharedDirector].winSize;
        
        
        self.isTouchEnabled = YES;

        
        circle = [CCSprite spriteWithFile:@"newTransitionCircleGreen.png"];
        circle.position = CGPointMake(screenSize.width / 2, screenSize.height/2 - 10);
        circle.anchorPoint = ccp(0.5, 0.5); //This would be the center of the image for a 30 X 30 image.
        [circle setOpacity:0];
        //[circle runAction:[CCRepeatForever actionWithAction:[CCRotateBy actionWithDuration:1.0 angle:10]]];
        CCFadeIn *fadeIn = [CCFadeIn actionWithDuration:1.5];
        CCMoveTo *moveUp = [CCMoveTo actionWithDuration:1.0 position:CGPointMake(screenSize.width / 2, screenSize.height/2)];
        [circle runAction:fadeIn];
        [circle runAction:moveUp];
        [self addChild:circle z:1];
        
        presshold = [CCSprite spriteWithFile:@"presshold-02.png"];
        presshold.position = CGPointMake(screenSize.width / 2, screenSize.height/2 + 120);
        presshold.anchorPoint = ccp(0.5, 0.5); //This would be the center of the image for a 30 X 30 image.
        [self addChild:presshold z:1];
        
        caution = [CCSprite spriteWithFile:@"stayAway02.png"];
        caution.position = CGPointMake(screenSize.width / 2 - 3, screenSize.height/2 + 95);
        caution.anchorPoint = ccp(0.5, 0.5); //This would be the center of the image for a 30 X 30 image.
        [self addChild:caution z:1];
        
        
        background = [CCSprite spriteWithFile:@"png.png"];
        background.anchorPoint = ccp(0,0);
        [self addChild:background z:0];
        
        
        CCMenuItem *startMenuItem = [CCMenuItemImage
                                     itemWithNormalImage:@"goBack.png" selectedImage:@"goBackPressed.png"
                                     target:self selector:@selector(backButton)];
        
        CCMenuItem *startMenuItem2 = [CCMenuItemImage
                                     itemWithNormalImage:@"greenCircleUnlocked.png" selectedImage:@"greenCircleUnlocked.png"
                                     target:self selector:@selector(greenCirclePressed)];
        
        CCMenuItem *startMenuItem3 = [CCMenuItemImage
                                      itemWithNormalImage:@"blueCircleUnlocked.png" selectedImage:@"blueCircleUnlocked.png"
                                      target:self selector:@selector(blueCirclePressed)];
        
        CCMenuItem *startMenuItem4 = [CCMenuItemImage
                                      itemWithNormalImage:@"pinkCircleUnlocked.png" selectedImage:@"pinkCircleUnlocked.png"
                                      target:self selector:@selector(pinkCirclePressed)];
        
        CCMenuItem *startMenuItem5 = [CCMenuItemImage
                                      itemWithNormalImage:@"purpleCircleUnlocked.png" selectedImage:@"purpleCircleUnlocked.png"
                                      target:self selector:@selector(purpleCirclePressed)];
        
        CCMenuItem *startMenuItem6 = [CCMenuItemImage
                                      itemWithNormalImage:@"orangeCircleUnlocked.png" selectedImage:@"orangeCircleUnlocked.png"
                                      target:self selector:@selector(orangeCirclePressed)];
        
        ex1 = [CCSprite spriteWithFile:@"white.jpg" ];
        [self addChild:ex1];
        
        ex2 = [CCSprite spriteWithFile:@"white.jpg" ];
        [self addChild:ex2];
        
        ex3 = [CCSprite spriteWithFile:@"white.jpg" ];
        [self addChild:ex3];
        
        ex4 = [CCSprite spriteWithFile:@"white.jpg" ];
        [self addChild:ex4];
        
        check = [CCSprite spriteWithFile:@"white.jpg" ];
        [self addChild:check];
        
        
        check.position = ccp(55, 135);
        
        ex1.position = ccp(115, 135);
        ex2.position = ccp(175, 135);
        ex3.position = ccp(235, 135);
        ex4.position = ccp(295, 135);
        
        
        
        startMenuItem.position = ccp(screenSize.width/2 - 115,screenSize.height-25);
        startMenuItem2.position = ccp(40, 100);
        startMenuItem3.position = ccp(100, 100);
        startMenuItem4.position = ccp(160, 100);
        startMenuItem5.position = ccp(220, 100);
        startMenuItem6.position = ccp(280, 100);
        
        
        
        CCMenu *startMenu = [CCMenu menuWithItems:startMenuItem,startMenuItem2,startMenuItem3,startMenuItem4,startMenuItem5,startMenuItem6,nil];
        startMenu.position = CGPointZero;
        [self addChild:startMenu];
      
        }
    
    return self;
}


-(void) greenCirclePressed {
    
    _greenIsSelected = YES;
    _blueIsSelected = NO;
    _pinkIsSelected = NO;
    _purpleIsSelected = NO;
    _orangeIsSelected = NO;



    CGSize screenSize = [CCDirector sharedDirector].winSize;
    
    [[SimpleAudioEngine sharedEngine] playEffect:@"button.wav"];
    
    [circle setOpacity:0];
    //[circle runAction:[CCRepeatForever actionWithAction:[CCRotateBy actionWithDuration:1.0 angle:10]]];
    CCFadeIn *fadeIn = [CCFadeIn actionWithDuration:1.0];
    CCMoveTo *moveUp = [CCMoveTo actionWithDuration:1.0 position:CGPointMake(screenSize.width / 2, screenSize.height/2)];
    CCMoveTo *moveDown = [CCMoveTo actionWithDuration:0.1 position:CGPointMake(screenSize.width / 2, screenSize.height/2 - 10)];
    CCTexture2D* tex = [[CCTextureCache sharedTextureCache] addImage:@"newTransitionCircleGreen.png"];
    [circle runAction:moveDown];
    [circle setTexture: tex];
    [circle runAction:fadeIn];
    [circle runAction:moveUp];
    

}

-(void) blueCirclePressed {
    
    _greenIsSelected = NO;
    _blueIsSelected = YES;
    _pinkIsSelected = NO;
    _purpleIsSelected = NO;
    _orangeIsSelected = NO;
    
    CGSize screenSize = [CCDirector sharedDirector].winSize;
    
    [[SimpleAudioEngine sharedEngine] playEffect:@"button.wav"];
    
    [circle setOpacity:0];
    //[circle runAction:[CCRepeatForever actionWithAction:[CCRotateBy actionWithDuration:1.0 angle:10]]];
    CCFadeIn *fadeIn = [CCFadeIn actionWithDuration:1.0];
    CCMoveTo *moveUp = [CCMoveTo actionWithDuration:1.0 position:CGPointMake(screenSize.width / 2, screenSize.height/2)];
    CCMoveTo *moveDown = [CCMoveTo actionWithDuration:0.1 position:CGPointMake(screenSize.width / 2, screenSize.height/2 - 10)];
    CCTexture2D* tex = [[CCTextureCache sharedTextureCache] addImage:@"newTransitionCircleBlue.png"];
    [circle runAction:moveDown];
    [circle setTexture: tex];
    [circle runAction:fadeIn];
    [circle runAction:moveUp];
    
}

-(void) pinkCirclePressed {
    _greenIsSelected = NO;
    _blueIsSelected = NO;
    _pinkIsSelected = YES;
    _purpleIsSelected = NO;
    _orangeIsSelected = NO;
    
    CGSize screenSize = [CCDirector sharedDirector].winSize;
    
    [[SimpleAudioEngine sharedEngine] playEffect:@"button.wav"];
    
    [circle setOpacity:0];
    //[circle runAction:[CCRepeatForever actionWithAction:[CCRotateBy actionWithDuration:1.0 angle:10]]];
    CCFadeIn *fadeIn = [CCFadeIn actionWithDuration:1.0];
    CCMoveTo *moveUp = [CCMoveTo actionWithDuration:1.0 position:CGPointMake(screenSize.width / 2, screenSize.height/2)];
    CCMoveTo *moveDown = [CCMoveTo actionWithDuration:0.1 position:CGPointMake(screenSize.width / 2, screenSize.height/2 - 10)];
    CCTexture2D* tex = [[CCTextureCache sharedTextureCache] addImage:@"newTransitionCirclePink.png"];
    [circle runAction:moveDown];
    [circle setTexture: tex];
    [circle runAction:fadeIn];
    [circle runAction:moveUp];
    
}

-(void) purpleCirclePressed {
    
    _greenIsSelected = NO;
    _blueIsSelected = NO;
    _pinkIsSelected = NO;
    _purpleIsSelected = YES;
    _orangeIsSelected = NO;
    
    
    CGSize screenSize = [CCDirector sharedDirector].winSize;
    
    [[SimpleAudioEngine sharedEngine] playEffect:@"button.wav"];
    
    [circle setOpacity:0];
    //[circle runAction:[CCRepeatForever actionWithAction:[CCRotateBy actionWithDuration:1.0 angle:10]]];
    CCFadeIn *fadeIn = [CCFadeIn actionWithDuration:1.0];
    CCMoveTo *moveUp = [CCMoveTo actionWithDuration:1.0 position:CGPointMake(screenSize.width / 2, screenSize.height/2)];
    CCMoveTo *moveDown = [CCMoveTo actionWithDuration:0.1 position:CGPointMake(screenSize.width / 2, screenSize.height/2 - 10)];
    CCTexture2D* tex = [[CCTextureCache sharedTextureCache] addImage:@"newTransitionCirclePurple.png"];
    [circle runAction:moveDown];
    [circle setTexture: tex];
    [circle runAction:fadeIn];
    [circle runAction:moveUp];
}

-(void)orangeCirclePressed {
    
    _greenIsSelected = NO;
    _blueIsSelected = NO;
    _pinkIsSelected = NO;
    _purpleIsSelected = NO;
    _orangeIsSelected = YES;
    
    
    CGSize screenSize = [CCDirector sharedDirector].winSize;
    
    [[SimpleAudioEngine sharedEngine] playEffect:@"button.wav"];
    
    [circle setOpacity:0];
    //[circle runAction:[CCRepeatForever actionWithAction:[CCRotateBy actionWithDuration:1.0 angle:10]]];
    CCFadeIn *fadeIn = [CCFadeIn actionWithDuration:1.0];
    CCMoveTo *moveUp = [CCMoveTo actionWithDuration:1.0 position:CGPointMake(screenSize.width / 2, screenSize.height/2)];
    CCMoveTo *moveDown = [CCMoveTo actionWithDuration:0.1 position:CGPointMake(screenSize.width / 2, screenSize.height/2 - 10)];
    CCTexture2D* tex = [[CCTextureCache sharedTextureCache] addImage:@"newTransitionCircleOrange.png"];
    [circle runAction:moveDown];
    [circle setTexture: tex];
    [circle runAction:fadeIn];
    [circle runAction:moveUp];
}

-(void)backButton {
    [[SimpleAudioEngine sharedEngine] playEffect:@"button.wav"];
    
    [[CCDirector sharedDirector] replaceScene:[CCTransitionMoveInL transitionWithDuration:0.5 scene:[StartMenu scene]]];
}


-(void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch* touch = [touches anyObject];
    CGPoint location = [touch locationInView: [touch view]];
    location = [[CCDirector sharedDirector] convertToGL:location];
    
    
    
    if (CGRectContainsPoint([circle boundingBox], location)) {
        
        [[SimpleAudioEngine sharedEngine] playEffect:@"button.wav"];
        
        if (_blueIsSelected == YES) {
        [[CCDirector sharedDirector] replaceScene:[CCTransitionCrossFade transitionWithDuration:0.5 scene:[GameLayerBlue scene]]];
        }
        
        if (_greenIsSelected == YES) {
        
        [[CCDirector sharedDirector] replaceScene:[CCTransitionCrossFade transitionWithDuration:0.5 scene:[GameLayer scene]]];
        }
        
        if (_pinkIsSelected == YES) {
            
            [[CCDirector sharedDirector] replaceScene:[CCTransitionCrossFade transitionWithDuration:0.5 scene:[GameLayerPink scene]]];
        }
        
        if (_purpleIsSelected == YES) {
            
            [[CCDirector sharedDirector] replaceScene:[CCTransitionCrossFade transitionWithDuration:0.5 scene:[GameLayerPurple scene]]];
        }
        
        if (_orangeIsSelected == YES) {
            
            [[CCDirector sharedDirector] replaceScene:[CCTransitionCrossFade transitionWithDuration:0.5 scene:[GameLayerOrange scene]]];
        }
        
    }
    
}




-(void) update:(ccTime)delta {
    
    if (_greenIsSelected == NO) {
        CCTexture2D *tex = [[CCTextureCache sharedTextureCache] addImage:@"white.jpg"];
        [check setTexture:tex];
    } else {
        CCTexture2D *tex2 = [[CCTextureCache sharedTextureCache] addImage:@"check.png"];
        [check setTexture:tex2];

    }
    
    
    if (_blueIsSelected == NO) {
        CCTexture2D *tex3 = [[CCTextureCache sharedTextureCache] addImage:@"white.jpg"];
        [ex1 setTexture:tex3];
    } else {
        CCTexture2D *tex4 = [[CCTextureCache sharedTextureCache] addImage:@"check.png"];
        [ex1 setTexture:tex4];
        
    }
    
    if (_pinkIsSelected == NO) {
        CCTexture2D *tex5 = [[CCTextureCache sharedTextureCache] addImage:@"white.jpg"];
        [ex2 setTexture:tex5];
    } else {
        CCTexture2D *tex6 = [[CCTextureCache sharedTextureCache] addImage:@"check.png"];
        [ex2 setTexture:tex6];
        
    }
    
    if (_purpleIsSelected == NO) {
        CCTexture2D *tex7 = [[CCTextureCache sharedTextureCache] addImage:@"white.jpg"];
        [ex3 setTexture:tex7];
    } else {
        CCTexture2D *tex4 = [[CCTextureCache sharedTextureCache] addImage:@"check.png"];
        [ex3 setTexture:tex4];
        
    }
    
    if (_orangeIsSelected == NO) {
        CCTexture2D *tex8 = [[CCTextureCache sharedTextureCache] addImage:@"white.jpg"];
        [ex4 setTexture:tex8];
    } else {
        CCTexture2D *tex9 = [[CCTextureCache sharedTextureCache] addImage:@"check.png"];
        [ex4 setTexture:tex9];
        
    }
    
}




-(void) dealloc
{
    CCLOG(@"%@: %@", NSStringFromSelector(_cmd), self);
    
}






@end