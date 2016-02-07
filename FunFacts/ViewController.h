//
//  ViewController.h
//  FunFacts
//
//  Created by Michael Alford on 2/3/16.
//  Copyright © 2016 Michael Alford. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FactBook;
@class ColorWheel;

@interface ViewController : UIViewController

- (UIColor*)getRandomColor:(UIColor*)currentBackgroundColor;
- (NSString*)getRandomFact:(NSString*)currentFact;

@property (weak, nonatomic) IBOutlet UILabel *funFactLabel;
@property (strong, nonatomic) FactBook *factbook;
@property (strong, nonatomic) ColorWheel *colorWheel;
@property (weak, nonatomic) IBOutlet UIButton *funFactButton;



@end

