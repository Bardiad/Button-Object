//
//  C4WorkSpace.m
//  Gryphon
//
//  Created by Bardia Doust on 13-04-24.
//  Copyright (c) 2013 Bardia Doust. All rights reserved.
//

#import "C4WorkSpace.h"
#import "ColorButton.h"

@interface C4WorkSpace()
    -(void)updateColorButtonBG;
@end    

@implementation C4WorkSpace

-(void)setup {
    
    //Init and alloc a new instance of a ColorButton Object with x/y positions and initial color
    ColorButton *button1 = [[ColorButton alloc]initWithColor:[UIColor greenColor] atX:50 atY:50];
    
    //change the bg color of ColorButton object
    [button1 changeColorTo:[UIColor blackColor]];
    
    
    //add color button
    [self.canvas addShape:button1.shape];

}

-(void)updateColorButtonBG{
    
}

@end