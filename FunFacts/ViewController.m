//
//  ViewController.m
//  FunFacts
//
//  Created by Michael Alford on 2/3/16.
//  Copyright © 2016 Michael Alford. All rights reserved.
//

#import "ViewController.h"
#import "FactBook.h"
#import "ColorWheel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.factbook = [[FactBook alloc] init];
    self.colorWheel = [[ColorWheel alloc] init];
    
    UIColor *randomColor = [self.colorWheel randomColor];
    self.view.backgroundColor = randomColor;
    self.funFactButton.tintColor = randomColor;
    self.funFactLabel.text = [self.factbook randomFact]; // randomFact is a instance method.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFact {
    // UIColor *randomColor = [self.colorWheel randomColor];
    UIColor *randomColor = [self getRandomColor:self.view.backgroundColor];
    self.view.backgroundColor = randomColor;
    self.funFactButton.tintColor = randomColor;
    self.funFactLabel.text = [self getRandomFact:self.funFactLabel.text];
}

    //Prevents background color and fact from occuring twice in a row.
    //The second fact/color is compared to the first generated fact/color.

- (UIColor*)getRandomColor:(UIColor*)currentBackgroundColor {
    UIColor *randomColor = [self.colorWheel randomColor];
    if ([randomColor isEqual:currentBackgroundColor]) {
        //The random fact is the same as the current fact so call this function again.
        return [self getRandomColor:currentBackgroundColor]; //Recursion
    } else {
        return randomColor;
        //If color is not equal to the last color then display the new generated color.
    }
}

- (NSString*)getRandomFact:(NSString *)currentFact {
    NSString *randomFact = [self.factbook randomFact];
    if ([randomFact isEqual:currentFact]) {
        //The random color is the same as the current color so call this function again.
        return [self getRandomFact:currentFact];
    } else {
        return randomFact;
        //If fact is not equal to the last fact then display the new generated fact.
    }
}

@end
