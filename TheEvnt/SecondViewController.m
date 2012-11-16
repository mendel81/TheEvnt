//
//  SecondViewController.m
//  TheEvnt
//
//  Created by Synapse Asesores Informaticos, S.L. on 15/11/12.
//  Copyright (c) 2012 Synapse Asesores Informaticos, S.L. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Facebook", @"Facebook");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
        facebook = [[NSMutableDictionary alloc] init];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - metodos propios

//! Nos carga asincronamente los tweets con el hashtag #bbbjz en el array "tweets" y nos recarga el tableview
//! @param nil
//! @return nil
- (void)fletchFB:(NSString*)user {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0ul), ^{
        NSData* data = [NSData dataWithContentsOfURL:
                        [NSURL URLWithString: [NSString stringWithFormat: @"https://graph.facebook.com/%@",user]]];
        
        NSError* error;
        
        NSMutableDictionary *fb = [[NSMutableDictionary alloc] initWithDictionary:[NSJSONSerialization JSONObjectWithData:data
                                                                                                                 options:kNilOptions
                                                                                                                   error:&error]];

        NSLog( @"%@", fb);
      //  [facebook setDictionary:fb];
        dispatch_async(dispatch_get_main_queue(), ^{
            nombre.text = [fb objectForKey:@"name"];
            datos.text = [NSString stringWithFormat: @"link: %@ \n username: %@ \n id: %@",[fb objectForKey:@"link"],[fb objectForKey:@"username"],[fb objectForKey:@"id"] ];
        });
    });
}

-(IBAction)facebookeame:(id)sender{
    
    [self fletchFB: username.text];
    [username resignFirstResponder];

}
@end
