//
//  Card.h
//  Machismo
//
//  Created by bruce on 8/3/14.
//  Copyright (c) 2014 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString* content;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched ) BOOL matched;

- (int) match: (NSArray* ) othercards;

@end
