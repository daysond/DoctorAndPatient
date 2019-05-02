//
//  Doctor.h
//  DoctorAndPatient
//
//  Created by Dayson Dong on 2019-05-01.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject
@property NSString* name;
@property NSString* specialization;
- (instancetype)initWithName: (NSString*) name andSpecialization: (NSString*) specialization;
-(void) patientVisit (Patient*);
@end

NS_ASSUME_NONNULL_END
