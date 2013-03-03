//
//  Horse_WhispererTests.m
//  Horse WhispererTests
//
//  Created by Josh Buhler on 2/27/13.
//  Copyright (c) 2013 Joshua Buhler. All rights reserved.
//

#import "Horse_WhispererTests.h"
#import "MFFuseBackup.h"
#import "MFFuseBackup+MFFuseBackup_Private.h"

@interface Horse_WhispererTests()
{
    NSURL *sampleBackupDir;
    NSURL *fuse270dir;
}

@end

@implementation Horse_WhispererTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    sampleBackupDir = [[NSBundle mainBundle] URLForResource:@"SampleBackups" withExtension:nil];
    
    fuse270dir = [sampleBackupDir URLByAppendingPathComponent:@"Mustang3_Fuse270/2013_02_27_21_09_59/"];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void) testSampleExistence
{
    NSFileManager *fileMan = [NSFileManager defaultManager];
    STAssertTrue([fileMan fileExistsAtPath:[fuse270dir path]], @"Sample backup not found - fuse270");
}
/*
- (void) testBackupValidation
{
    MFFuseBackup *testBackup = [[MFFuseBackup alloc] initWithBackupFolder:fuse270dir];
    
    STAssertTrue([testBackup validateBackupContents], @"Validation of sample contents failed.");
}

- (void) testBackupDescription
{
    MFFuseBackup *testBackup = [[MFFuseBackup alloc] initWithBackupFolder:fuse270dir];
    STAssertTrue([testBackup.backupDescription isEqualToString:@"TestBackup - Mustang 3 - Fuse 2.7"], @"Backup description not loaded");
}
*/

@end
