//
//  PlayingCardView.h
//  SuperCard
//
//  Created by Wilken Hustedt on 13.02.13.
//  Copyright (c) 2013 whustedt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (strong, nonatomic) NSString *suit;

@property (nonatomic) BOOL faceUp;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;

@end
