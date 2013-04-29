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

@implementation C4WorkSpace{
    NSMutableArray *buttonArray;
    NSMutableArray *colorArray;
}

-(void)setup {
    
    

    
    //Create an array with a capacity of 20 to hold buttons
    buttonArray = [[NSMutableArray alloc]initWithCapacity:20];
    
    //Create another array that holds color values
    colorArray = [[NSMutableArray alloc]initWithCapacity:15];
    
    CGFloat colorVal = 0.1;
    
    for(int i = 0 ; i < 15 ; i++){
        
        /* Set Initial Color Values in colorArray
        ////////////////////////////////////////
        //////////////////////////////////////*/
        
        //Create temp color object
        UIColor *tempColor = [UIColor colorWithRed:colorVal green:0.3 blue:0.5 alpha:1.0];
        
        //add UIColor to array
        [colorArray addObject:tempColor];
        
        //increment colorVal
        colorVal += 0.08;
        
        
        
        
        /* Populate buttonArray with button objects
        ///////////////////////////////////////////
        /////////////////////////////////////////*/
        
        //Create temp object to hold button
        
        int width = self.canvas.width;
        ColorButton *button = [[ColorButton alloc]initWithColor:[colorArray objectAtIndex:i] atX:20+(0.2f*width)*i atY:20];
        [button setXValue:20.0f];
        

        
        
        //add Button to array
        [buttonArray addObject:button];
        
        
        //add every button in the array to the canvas
        for (button in buttonArray){
            [self.canvas addShape:button.shape];
        }
    }
    
    
    //TESTING
    ColorButton *buttonTest = [buttonArray objectAtIndex:3];
    NSLog(@"The xValue is %f and the yValue is %f", buttonTest.xValue, buttonTest.yValue);
    float tester = [buttonTest locationAtY];
    
    NSLog(@"The value is still %f", tester);
    
    
    
    //Testing to change button color value
    UIColor *anotherColor = [UIColor greenColor];
    [colorArray replaceObjectAtIndex:1 withObject:anotherColor];
    [self updateColorButtonBG];
    
}

-(void)updateColorButtonBG{
    for (int i = 0 ; i < 15 ; i++){
        [[buttonArray objectAtIndex:i] changeColorTo:[colorArray objectAtIndex:i]];
        ColorButton *button = [buttonArray objectAtIndex:i];
        NSLog(@"in ColorButton Update Method");
        [self.canvas addShape:button.shape];
    }
    
}

@end