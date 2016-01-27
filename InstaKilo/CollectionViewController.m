//
//  CollectionViewController.m
//  InstaKilo
//
//  Created by Thiago Heitling on 2016-01-27.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "CollectionViewController.h"
#import "CustomCollectionViewCell.h"
#import "Photo.h"

@interface CollectionViewController ()

@property (nonatomic)UICollectionViewFlowLayout *flowLayout;

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    Photo *photo1 = [[Photo alloc] initWithTitle:@"Thiago profile img" location:@"Vancouver" andImage:[UIImage imageNamed:@"32511_124578274229191_1646015_n"]];
    Photo *photo2 = [[Photo alloc] initWithTitle:@"Bus blak&white" location:@"Montreal" andImage:[UIImage imageNamed:@"IMG_0615"]];
    Photo *photo3 = [[Photo alloc] initWithTitle:@"Intership in Canada" location:@"Vancouver" andImage:[UIImage imageNamed:@"IMG_0619"]];
    Photo *photo4 = [[Photo alloc] initWithTitle:@"Sending letter to Santa" location:@"Burnaby" andImage:[UIImage imageNamed:@"IMG_0620"]];
    Photo *photo5 = [[Photo alloc] initWithTitle:@"Tantalus Provincial Park" location:@"Squamish" andImage:[UIImage imageNamed:@"IMG_0623"]];
    Photo *photo6 = [[Photo alloc] initWithTitle:@"Santa and reindeers" location:@"Burnaby" andImage:[UIImage imageNamed:@"IMG_0629"]];
    Photo *photo7 = [[Photo alloc] initWithTitle:@"My kids with nice masks" location:@"Richmond" andImage:[UIImage imageNamed:@"IMG_0631"]];
    Photo *photo8 = [[Photo alloc] initWithTitle:@"Kid playing with my camera" location:@"Burnaby" andImage:[UIImage imageNamed:@"IMG_0652"]];
    Photo *photo9 = [[Photo alloc] initWithTitle:@"My office" location:@"Burnaby" andImage:[UIImage imageNamed:@"IMG_0676"]];
    Photo *photo10 = [[Photo alloc] initWithTitle:@"First X in Vancouver" location:@"Burnaby" andImage:[UIImage imageNamed:@"IMG_0683"]];
    
    NSArray *photosCollection = [NSArray arrayWithObjects:photo1, photo2, photo3, photo4, photo5, photo6, photo7, photo8, photo9, photo10, nil];
    
    self.flowLayout = [[UICollectionViewFlowLayout alloc] init];
    self.flowLayout.itemSize = CGSizeMake(300, 300);
    self.flowLayout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);
    self.flowLayout.minimumInteritemSpacing = 5;
    self.flowLayout.minimumLineSpacing = 10;
//    self.flowLayout.headerReferenceSize = CGSizeMake(self.collectionView.frame.size.width, 30);
    
    self.collectionView.collectionViewLayout = self.flowLayout;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return 10;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell
    cell.backgroundColor = [UIColor redColor];
    
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
