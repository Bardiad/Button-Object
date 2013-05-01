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

@synthesize xValue;
@synthesize yValue;
@synthesize color;


//Custom Init method to set a color and position values for button
-(id)initWithColor:(UIColor *)bgColor atX:(float)_xValue atY:(float)_yValue{
    
    //Create CGRect frame that will set dimensions for button
    CGRect frame = CGRectMake(_xValue, _yValue, 100, 100);
    
    //Create C4Shape to store CGRect
    _shape = [C4Shape rect:frame];
    
    //set color to passed value
    _shape.fillColor = bgColor;
    _shape.lineWidth = 0.0f;
    
    self.xValue = _xValue;
    self.yValue = _yValue;
    self.color = bgColor;
    
    //return object
    return self;
    
}



//Method to change color of button
-(void)changeColorTo:(UIColor *)newColor{
    
    //Assign new color to the *color property
    self.color = newColor;
    
    //set new color
    self.shape.fillColor = newColor;
    
}


//Method that returns the current color value of a button
-(UIColor *)colorOfButton{
    return self.color;
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