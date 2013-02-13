//
//  SuperCardViewController.m
//  SuperCard
//
//  Created by Wilken Hustedt on 13.02.13.
//  Copyright (c) 2013 whustedt. All rights reserved.
//

#import "SuperCardViewController.h"
#import "PlayingCardView.h"

@interface SuperCardViewController ()
@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;

@end

@implementation SuperCardViewController

- (void)setPlayingCardView:(PlayingCardView *)playingCardView {
    _playingCardView = playingCardView;
    playingCardView.rank = 13; // K
    playingCardView.suit = @"♥";
    [playingCardView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:playingCardView action:@selector(pinch:)]];
}

- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    [UIView transitionWithView:self.playingCardView
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                        self.playingCardView.faceUp = !self.playingCardView.faceUp;
                    } completion:NULL];
}

@end
