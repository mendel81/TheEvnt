//
//  MesesViewController.h
//  TheEvnt
//
//  Created by Synapse Asesores Informaticos, S.L. on 16/11/12.
//  Copyright (c) 2012 Synapse Asesores Informaticos, S.L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MesesViewController : UIViewController{

    IBOutlet UILabel *mes;
    NSString *nombreMes;
    
}

@property (nonatomic, strong) NSString *nombreMes;

@end
