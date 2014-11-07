//
//  ViewController.m
//  Cube
//
//  Created by Gerrit on 29.10.14.
//  Copyright (c) 2014 HugoAppTeam. All rights reserved.
//

#import "ViewController.h"
#include <stdlib.h>
#include <string.h>

@interface ViewController ()

-(void) show:(int)random;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) show:(int) random{
    NSLog(@"Show aufgerufen! Random: '%d'", random);
    switch (random) {
        case 1:
            point1.hidden=YES;
            point2.hidden=YES;
            point3.hidden=YES;
            point5.hidden=YES;
            point6.hidden=YES;
            point7.hidden=YES;
            point4.hidden=NO;
            break;
        case 2:
            
            point2.hidden=YES;
            point3.hidden=YES;
            point4.hidden=YES;
            point5.hidden=YES;
            point6.hidden=YES;
            point1.hidden=NO;
            point7.hidden=NO;
            break;
        case 3:
            
            point2.hidden=YES;
            point3.hidden=YES;
            point5.hidden=YES;
            point6.hidden=YES;
            
            point4.hidden=NO;
            point1.hidden=NO;
            point7.hidden=NO;
            break;
        case 4:
           
            point2.hidden=YES;
            
            point4.hidden=YES;
            
            point6.hidden=YES;
            
            point1.hidden=NO;
            point3.hidden=NO;
            point5.hidden=NO;
            point7.hidden=NO;
            break;
        case 5:
            point2.hidden=YES;
            point6.hidden=YES;
            
            point1.hidden=NO;
            point3.hidden=NO;
            point4.hidden=NO;
            point5.hidden=NO;
            point7.hidden=NO;
            break;
        case 6:
            point4.hidden=YES;
            point1.hidden=NO;
            point2.hidden=NO;
            point3.hidden=NO;
            point5.hidden=NO;
            point6.hidden=NO;
            point7.hidden=NO;
            break;
            
        default:
            break;
    }

    
}


- (IBAction)pressed:(id)sender {

    
    
    int random = 0;
    for(int i = 0; i<5; i++){
        
        random = arc4random_uniform(6)+1;
        
    
        [self show:random];
        
        UIWindow *window = [[UIApplication sharedApplication] keyWindow];
        UIView *currentview = window.rootViewController.view;
        UIView *superview = currentview.superview;
        [currentview removeFromSuperview];
        [superview addSubview:currentview];
        
        [NSThread sleepForTimeInterval:1];
        
        NSLog(@"Durchlauf: '%d'", i);
    }
    
    

    
   
    
    
}

@end
