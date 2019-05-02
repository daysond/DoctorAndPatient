//
//  Patient.h
//  DoctorAndPatient
//
//  Created by Dayson Dong on 2019-05-01.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject
@property (nonatomic) NSString* name;
@property (nonatomic)NSInteger age;
@property (nonatomic)NSString* healthCardNumber;
@property (nonatomic)NSMutableSet* symptoms;
@property (nonatomic) BOOL hasValidHealthCard;
@property (nonatomic,readonly)NSMutableArray* medHistory;
- (instancetype)initWithName:(NSString*) name andAge: (int) age;
@end

NS_ASSUME_NONNULL_END
