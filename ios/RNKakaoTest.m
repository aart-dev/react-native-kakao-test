
#import "RNKakaoTest.h"
#import <React/RCTLog.h>

@implementation RNKakaoTest

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE();

// 카카오
//RCT_EXPORT_METHOD(link:(RCTResponseSenderBlock)callback)
//{
//    callback(@[[NSNull null], [NSNull null]]);
//}

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location)
{
    RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

@end
