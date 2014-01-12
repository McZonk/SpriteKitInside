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
		
		[path moveToPoint:CGPointMake(-200.0, -100.0)];
		[path addCurveToPoint:CGPointMake(200.0, -100.0) controlPoint1:CGPointMake(-200.0, 200.0) controlPoint2:CGPointMake(200, 200.0)];
		
		[path applyTransform:CGAffineTransformMakeTranslation(center.x, center.y)];
		
		SKShapeNode *shapeNode = [[SKShapeNode alloc] init];
		shapeNode.path = path.CGPath;
		shapeNode.fillColor = nil;
		shapeNode.strokeColor = [SKColor redColor];
		shapeNode.lineWidth = 10.0;
		shapeNode.glowWidth = 10.0;
		
		[self addChild:shapeNode];
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
