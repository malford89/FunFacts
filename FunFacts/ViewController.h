//
//  ViewController.h
//  FunFacts
//
//  Created by Michael Alford on 2/3/16.
//  Copyright © 2016 Michael Alford. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FactBook;

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *funFactLabel;
@property (strong, nonatomic) FactBook *factbook;
@end

