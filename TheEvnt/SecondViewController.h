//
//  SecondViewController.h
//  TheEvnt
//
//  Created by Synapse Asesores Informaticos, S.L. on 15/11/12.
//  Copyright (c) 2012 Synapse Asesores Informaticos, S.L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController{
    NSMutableDictionary *facebook;
    IBOutlet UILabel *nombre;
    IBOutlet UITextView *datos;
    IBOutlet UITextField *username;
    
}

- (void)fletchFB:(NSString*)username;
-(IBAction)facebookeame:(id)sender;
@end
