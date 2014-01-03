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
		
		const float xStep = size.width / 4.0;
		const float yStep = size.height / 3.0;
		
		NSArray *imageNames = @[ @"SpaceshipRed", @"SpaceshipGreen", @"SpaceshipBlue" ];
		
		for(float y = yStep * 0.5; y < size.height; y += yStep) {
			for(float x = xStep * 0.5; x < size.width; x += xStep) {
				NSString *imageName = imageNames[rand() % imageNames.count];
				
				SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:imageName];
				
				sprite.position = CGPointMake(x, y);
				sprite.scale = 0.2;
				
				SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
				
				[sprite runAction:[SKAction repeatActionForever:action]];
				
				[self addChild:sprite];
			}
		}
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
