//
//  FirstViewController.h
//  TheEvnt
//
//  Created by Synapse Asesores Informaticos, S.L. on 15/11/12.
//  Copyright (c) 2012 Synapse Asesores Informaticos, S.L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITextFieldDelegate> {

    IBOutlet UILabel *nombre;
    IBOutlet UITextField *presentate;
    IBOutlet UISegmentedControl *colores;
}

- (IBAction)diHola:(id)sender;
- (IBAction)cambiarColorFondo:(id)sender;

@end
