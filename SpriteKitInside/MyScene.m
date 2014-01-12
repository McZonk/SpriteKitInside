//
//  MyScene.m
//  SpriteKitInside
//
//  Created by Maximilian Christ on 02/01/14.
//  Copyright (c) 2014 McZonk. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
		
		const CGSize size = self.frame.size;
		
		SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"SpaceshipRed"];
				
		sprite.position = CGPointMake(size.width * 0.5, size.height * 0.5);
		sprite.scale = 0.2;
				
		SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
		[sprite runAction:[SKAction repeatActionForever:action]];
				
		[self addChild:sprite];
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
