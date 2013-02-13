//
//  PlayingCard.h
//  Matchismo
//
//  Created by Wilken Hustedt on 29.01.13.
//  Copyright (c) 2013 whustedt. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
