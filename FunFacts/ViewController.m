//
//  ViewController.m
//  FunFacts
//
//  Created by Michael Alford on 2/3/16.
//  Copyright © 2016 Michael Alford. All rights reserved.
//

#import "ViewController.h"
#import "FactBook.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.factbook = [[FactBook alloc] init];

    self.funFactLabel.text = [self.factbook randomFact];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFact {
    
    
    self.funFactLabel.text = [self.factbook randomFact];
}

@end
