//
//  AnimatedImagesView.h
//  LGW_AnimatedImagesView
//
//  Created by Lilong on 16/5/15.
//  Copyright © 2016年 第七代目. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kJSAnimatedImagesViewDefaultTimePerImage 10.0f

@protocol AnimatedImagesViewDelegate;

@interface AnimatedImagesView : UIView

@property (nonatomic, assign) id<AnimatedImagesViewDelegate> delegate;

@property (nonatomic, assign) NSTimeInterval timePerImage;

- (void)startAnimating;
- (void)stopAnimating;

- (void)reloadData;

@end

@protocol AnimatedImagesViewDelegate
- (NSUInteger)animatedImagesNumberOfImages:(AnimatedImagesView *)animatedImagesView;
- (UIImage *)animatedImagesView:(AnimatedImagesView *)animatedImagesView imageAtIndex:(NSUInteger)index;
@end
