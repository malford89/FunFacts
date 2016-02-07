//
//  FactBook.h
//  FunFacts
//
//  Created by Michael Alford on 2/4/16.
//  Copyright © 2016 Michael Alford. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FactBook : NSObject
@property (strong, nonatomic) NSArray *facts;

- (NSString *)randomFact;

@end
