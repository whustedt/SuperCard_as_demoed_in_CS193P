//
//  PlayingCard.m
//  Matchismo
//
//  Created by Wilken Hustedt on 29.01.13.
//  Copyright (c) 2013 whustedt. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit; // because we provide setter AND getter

- (int)match:(NSArray *)otherCards {
    int score = 0;
    
    if (otherCards.count == 1) {
        id otherCard = otherCards.lastObject;
        if ([otherCard isKindOfClass:[PlayingCard class]]) {
            PlayingCard *otherPlayingCard = otherCard;
            if ([otherPlayingCard.suit isEqualToString:self.suit]) {
                score = 1;
            } else if (otherPlayingCard.rank == self.rank) {
                score = 4;
            }
        }
    } else if (otherCards.count == 2) {
        id otherCard1 = otherCards[0];
        id otherCard2 = otherCards[1];
        if ([otherCard1 isKindOfClass:[PlayingCard class]] && [otherCard2 isKindOfClass:[PlayingCard class]]) {
            PlayingCard *otherPlayingCard1 = otherCard1;
            PlayingCard *otherPlayingCard2 = otherCard2;
            if ([otherPlayingCard1.suit isEqualToString:self.suit] && [otherPlayingCard2.suit isEqualToString:self.suit]) {
                score = 2;
            } else if (otherPlayingCard1.rank == self.rank && otherPlayingCard2.rank == self.rank) {
                score = 6;
            }
        }
    }
    
    return score;
}

- (NSString *)contents {
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *)validSuits {
    return @[@"♥",@"♦",@"♠",@"♣"];
}

- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    return (_suit) ? _suit : @"?";
}

+ (NSArray *)rankStrings {
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank {
    return [self rankStrings].count-1;
}

- (void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

- (NSString *)description {
    return self.contents;
}

@end
