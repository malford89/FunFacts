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
    
    self.view.backgroundColor = [self.colorWheel randomColor];
    self.funFactLabel.text = [self.factbook randomFact]; // randomFact is a instance method.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFact {
    
    self.view.backgroundColor = [self.colorWheel randomColor];
    self.funFactLabel.text = [self.factbook randomFact];
}

@end
