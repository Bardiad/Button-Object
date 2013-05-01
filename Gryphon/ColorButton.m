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

@synthesize xValue = _xValue;
@synthesize yValue = _yValue;


//Custom Init method to set a color and position values for button
-(id)initWithColor:(UIColor *)color atX:(float)_xValue atY:(float)_yValue{
    
    //Create CGRect frame that will set dimensions for button
    CGRect frame = CGRectMake(_xValue, _yValue, 100, 100);
    
    //Create C4Shape to store CGRect
    _shape = [C4Shape rect:frame];
    
    //set color to passed value
    _shape.fillColor = color;
    _shape.lineWidth = 0.0f;
    
    
    //return object
    return self;
    
}



//Method to change color of button
-(void)changeColorTo:(UIColor *)newColor{
    
    //Assign new color to the *color property
    _color = newColor;
    
    //set new color
    _shape.fillColor = newColor;
    
}


//Method that returns the current color value of a button
-(UIColor *)colorOfButton{
    return _color;
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