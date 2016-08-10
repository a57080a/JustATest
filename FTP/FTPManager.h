//
//  FTPManager.h
//  FTP
//
//  Created by sifanchen on 16/4/16.
//  Copyright © 2016年 qixiekeji. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <CFNetwork/CFNetwork.h>

enum {
    kSendBufferSize = 32768
};

@protocol FTPManagerDelegate <NSObject>

-(void)ftpUploadFinishedWithSuccess:(BOOL)success;
-(void)ftpDownloadFinishedWithSuccess:(BOOL)success;
-(void)directoryListingFinishedWithSuccess:(NSArray *)arr;
-(void)ftpError:(NSString *)err;


@end

@interface FTPManager : NSObject


- (id)initWithServer:(NSString *)server user:(NSString *)username
            password:(NSString *)pass;

- (void)downloadRemoteFile:(NSString *)filename localFileName:(NSString *)localname;

- (void)uploadFileWithFilePath:(NSString *)filePath;
- (void)createRemoteDirectory:(NSString *)dirname;

- (void)listRemoteDirectory;
@property (nonatomic, assign) id<FTPManagerDelegate>;

@end
