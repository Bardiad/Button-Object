//
//  ColorButton.m
//  Gryphon
//
//  Created by Bardia Doust on 13-04-24.
//  Copyright (c) 2013 Bardia Doust. All rights reserved.
//

#import "ColorButton.h"
#import "C4WorkSpace.h"

@implementation ColorButton

//Synthesized properties
@synthesize shape;
@synthesize color;

//Custom Init method to set color and make shape and return an object with these 2 properties set
- (id)initWithColor:(UIColor *)Tcolor {
{
    self = [super init];
    if (self) {
        shape = [C4Shape rect:CGRectMake(20, 20, 100, 100)];
        shape.backgroundColor = Tcolor;
    }
    return self;
}
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
