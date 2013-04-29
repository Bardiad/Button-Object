//
//  ColorButton.h
//  Gryphon
//
//  Created by Bardia Doust on 13-04-24.
//  Copyright (c) 2013 Bardia Doust. All rights reserved.
//

#import "C4Control.h"

@interface ColorButton : C4Control

@property UIColor *color;
@property C4Shape *shape;
@property float xValue;
@property float yValue;


-(id)initWithColor:(UIColor *)bgColor atX:(float)_xValue atY:(float)_yValue;

-(void)changeColorTo:(UIColor *)newColor;

-(UIColor *)colorOfButton;

-(float)locationAtX;

-(float)locationAtY;




@end