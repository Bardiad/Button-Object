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

//-(void)sendData;

-(id)initWithColor:(UIColor *)Tcolor;

@end
