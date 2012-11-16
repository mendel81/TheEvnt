//
//  NavViewController.m
//  TheEvnt
//
//  Created by Synapse Asesores Informaticos, S.L. on 16/11/12.
//  Copyright (c) 2012 Synapse Asesores Informaticos, S.L. All rights reserved.
//

#import "NavViewController.h"

@interface NavViewController ()

@end

@implementation NavViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id) initWithRootViewController:(UIViewController *)rootViewController {
    self = [super initWithRootViewController:rootViewController];
    if (self){
        self.title = NSLocalizedString(@"Tabla", @"Tercero");
        self.tabBarItem.image = [UIImage imageNamed:@"three"];
    }
    return self;
}

- (void)viewDidLoad
{
   

    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
