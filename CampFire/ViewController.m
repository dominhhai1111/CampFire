//
//  ViewController.m
//  CampFire
//
//  Created by Do Minh Hai on 9/21/15.
//  Copyright (c) 2015 Do Minh Hai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView* CampFire;
    
}
@end

@implementation ViewController

-(void)loadView
{
    [super loadView];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self BurnFire];
  }

-(void)BurnFire
{
    CampFire = [[UIImageView alloc] initWithFrame:self.view.bounds];
    NSMutableArray* images = [[NSMutableArray alloc] initWithCapacity:17];
    for (int i=1; i<18; i++) {
        NSString* fireName;
        fireName = [NSString stringWithFormat:@"campFire%d.gif",i];
        [images addObject:[UIImage imageNamed:fireName]];
    }
    CampFire.animationImages = images;
                    CampFire.animationDuration=1;
                    CampFire.animationRepeatCount=0;
                    [self.view addSubview:CampFire];
                    [CampFire startAnimating];
}

@end
