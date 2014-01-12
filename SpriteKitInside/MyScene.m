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
		
		UIBezierPath *path = [UIBezierPath bezierPath];
		
		float a = M_PI * 0.5;
		for(int i = 0; i < 5; ++i, a += M_PI * 2.0 * (2.0 / 5.0)) {
			CGPoint point = CGPointMake(
				center.x + cosf(a) * 100.0,
				center.y + sinf(a) * 100.0
			);
			
			if(i == 0) {
				[path moveToPoint:point];
			} else {
				[path addLineToPoint:point];
			}
		}
		
		[path closePath];
		
		SKShapeNode *shapeNode = [[SKShapeNode alloc] init];
		shapeNode.path = path.CGPath;
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
