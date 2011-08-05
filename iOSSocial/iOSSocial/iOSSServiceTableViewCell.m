//
//  iOSSServiceTableViewCell.m
//  PhotoStream
//
//  Created by Christopher White on 8/4/11.
//  Copyright 2011 Mad Races, Inc. All rights reserved.
//

#import "iOSSServiceTableViewCell.h"
#import "iOSSService.h"

@interface iOSSServiceTableViewCell () {
    iOSSService *_service;
}

@end

@implementation iOSSServiceTableViewCell

@synthesize service=_service;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

+ (id)cellForTableView:(UITableView *)tableView {
    NSString *cellID = [self cellIdentifier];
    UITableViewCell *cell = [tableView 
                             dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[self alloc] initWithCellIdentifier:cellID];
    }
    return cell;    
}


- (id)initWithCellIdentifier:(NSString *)cellID {
    return [self initWithStyle:UITableViewCellStyleSubtitle 
               reuseIdentifier:cellID];
}

- (void)setService:(iOSSService*)theService
{
    _service = theService;
    
    self.textLabel.text = self.service.name;
    if ([self.service isConnected]) {
        self.detailTextLabel.text = @"connected";
    } else {
        self.detailTextLabel.text = @"not connected";
    }
    
    /*
    //first item is #name
    UILabel *textLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 5.0f, 50.0, 20.0)];
    textLabel1.font = [UIFont boldSystemFontOfSize:14.0f];
    textLabel1.text = [NSString stringWithFormat:@"#%@", self.photoSource.name];
    [self.contentView addSubview:textLabel1];
    
    //now a row of photos
    //need an array of urls from the mediaGroup
    UIImageView *imageView = nil;
    NSInteger index = 0;
    UIImage *image = nil;
    for (NSString *url in self.photoSource.previewImageURLs) {
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(5.0f+(100.0f*index), 30.0f, 100.0f, 100.0f)];
        image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:url]]];
        imageView.image = image;
        [self.contentView addSubview:imageView];
        index++;
    }
    */
}

@end