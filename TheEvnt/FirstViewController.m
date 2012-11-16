//
//  FirstViewController.m
//  TheEvnt
//
//  Created by Synapse Asesores Informaticos, S.L. on 15/11/12.
//  Copyright (c) 2012 Synapse Asesores Informaticos, S.L. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"hello", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    nombre.text = @"por favor, presentate";
    presentate.delegate=self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)diHola:(id)sender{
    nombre.text = [NSString stringWithFormat:@"Hola, mi nombre es: %@", presentate.text];
    [presentate resignFirstResponder];
}

-(IBAction)cambiarColorFondo:(id)sender{
    switch (colores.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = [UIColor whiteColor];
            break;
            
        case 1:
            self.view.backgroundColor = [UIColor blueColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor greenColor];
            break;
        case 3:
            self.view.backgroundColor = [UIColor redColor];
            break;
            
        default:
            break;
    }
}

@end
