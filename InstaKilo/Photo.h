//
//  Photo.h
//  InstaKilo
//
//  Created by Thiago Heitling on 2016-01-27.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Photo : NSObject

@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *location;
@property(nonatomic, strong) UIImage *image;

- (instancetype)initWithTitle:(NSString *)title location:(NSString *)location andImage:(UIImage *)image;

@end
