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
		
		const CGPoint center = CGPointMake(size.width * 0.5, size.height * 0.5);
		
		CGRect box = CGRectMake(center.x - 40.0, center.y - 40.0, 80.0, 80.0);
		
		SKShapeNode *shapeNode = [[SKShapeNode alloc] init];
		shapeNode.path = [UIBezierPath bezierPathWithOvalInRect:box].CGPath;
		shapeNode.fillColor = [SKColor yellowColor];
		shapeNode.strokeColor = nil;
		
		[self addChild:shapeNode];
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
