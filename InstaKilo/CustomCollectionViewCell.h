//
//  CustomCollectionViewCell.h
//  InstaKilo
//
//  Created by Thiago Heitling on 2016-01-27.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Photo;

@interface CustomCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) Photo *photo;

//-(void)configureWithObject:(Photo *)photo;


-(void)setObject:(Photo *)photo;


@end
