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

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) show:(int) random{
    NSLog(@"Show aufgerufen! Random: '%d'", random);
    switch (random) {
        case 1:
            point1.hidden = YES;
            point2.hidden = YES;
            point3.hidden = YES;
            point5.hidden = YES;
            point6.hidden = YES;
            point7.hidden = YES;
            point4.hidden = NO;
            break;
        case 2:
            
            point2.hidden = YES;
            point3.hidden = YES;
            point4.hidden = YES;
            point5.hidden = YES;
            point6.hidden = YES;
            point1.hidden = NO;
            point7.hidden = NO;
            break;
        case 3:
            
            point2.hidden = YES;
            point3.hidden = YES;
            point5.hidden = YES;
            point6.hidden = YES;
            point4.hidden = NO;
            point1.hidden = NO;
            point7.hidden = NO;
            break;
        case 4:
           
            point2.hidden = YES;
            point4.hidden = YES;
            point6.hidden = YES;
            point1.hidden = NO;
            point3.hidden = NO;
            point5.hidden = NO;
            point7.hidden = NO;
            break;
        case 5:
            point2.hidden = YES;
            point6.hidden = YES;
            point1.hidden = NO;
            point3.hidden = NO;
            point4.hidden = NO;
            point5.hidden = NO;
            point7.hidden = NO;
            break;
        case 6:
            point4.hidden = YES;
            point1.hidden = NO;
            point2.hidden = NO;
            point3.hidden = NO;
            point5.hidden = NO;
            point6.hidden = NO;
            point7.hidden = NO;
            break;
            
        default:
            break;
    }
}


- (IBAction)pressed:(id)sender {
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
    int random;
    for(int i = 0; i<=20; i++){
    
        random = arc4random_uniform(6)+1;

        dispatch_async(dispatch_get_main_queue(), ^{[self show:random];} );

        [NSThread sleepForTimeInterval:0.3];
        
        NSLog(@"Durchlauf: '%d'", i);
    }
    });
}

@end
