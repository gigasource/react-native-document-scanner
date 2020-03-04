
#import "RNPdfScannerManager.h"
#import "DocumentScannerView.h"

#import <React/RCTBridge.h>
#import <React/RCTUIManager.h>
#import <React/RCTLog.h>

@interface RNPdfScannerManager()
@property (strong, nonatomic) DocumentScannerView *scannerView;
@end

@implementation RNPdfScannerManager

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(onPictureTaken, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onRectangleDetect, RCTBubblingEventBlock)

RCT_EXPORT_VIEW_PROPERTY(overlayColor, UIColor)
RCT_EXPORT_VIEW_PROPERTY(enableTorch, BOOL)
RCT_EXPORT_VIEW_PROPERTY(useFrontCam, BOOL)
RCT_EXPORT_VIEW_PROPERTY(useBase64, BOOL)
RCT_EXPORT_VIEW_PROPERTY(saveInAppDocument, BOOL)
RCT_EXPORT_VIEW_PROPERTY(captureMultiple, BOOL)
RCT_EXPORT_VIEW_PROPERTY(manualOnly, BOOL)
RCT_EXPORT_VIEW_PROPERTY(detectionCountBeforeCapture, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(durationBetweenCaptures, double)
RCT_EXPORT_VIEW_PROPERTY(detectionRefreshRateInMS, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(saturation, float)
RCT_EXPORT_VIEW_PROPERTY(quality, float)
RCT_EXPORT_VIEW_PROPERTY(brightness, float)
RCT_EXPORT_VIEW_PROPERTY(contrast, float)

RCT_EXPORT_METHOD(capture:(nonnull NSNumber *)reactTag)
{
    [_scannerView capture];
}

- (UIView*) view {
    _scannerView = [[DocumentScannerView alloc] init];
    return _scannerView;
}

@end
