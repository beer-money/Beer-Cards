//
//  ACRCustomRenderer
//  ACRCustomRenderer.mm
//
//  Copyright © 2017 Microsoft. All rights reserved.
//

#import "ACRCustomRenderer.h"
#import "ACRRendererPrivate.h"
#import "UnknownElement.h"
#import "SharedAdaptiveCard.h"
#import "ACOBaseCardElementPrivate.h"
#import "ACRContentHoldingUIView.h"
#import "ACOHostConfigPrivate.h"
#import "ACRRegistration.h"
#import "ACRErrors.h"

@implementation ACRCustomRenderer

+ (ACRCustomRenderer *)getInstance
{
    static ACRCustomRenderer *singletonInstance = [[self alloc] init];
    return singletonInstance;
}

+ (ACRCardElementType)elemType
{
    return ACRUnknown;
}

- (UIView *)render:(UIView<ACRIContentHoldingView> *)viewGroup
          rootView:(ACRView *)rootView
            inputs:(NSMutableArray *)inputs
   baseCardElement:(ACOBaseCardElement *)acoElem
        hostConfig:(ACOHostConfig *)acoConfig;
{
    std::shared_ptr<UnknownElement> customElem = std::dynamic_pointer_cast<UnknownElement>([acoElem element]);

    ACRRegistration *reg = [ACRRegistration getInstance];
    if(reg) {
        NSString *type = [NSString stringWithCString:customElem->GetElementTypeString().c_str() encoding:NSUTF8StringEncoding];
        Json::Value blob = customElem->GetAdditionalProperties();
        Json::FastWriter fastWriter;
        NSString *jsonString = [[NSString alloc] initWithCString:fastWriter.write(blob).c_str() encoding:NSUTF8StringEncoding];

        if(jsonString.length > 0){
            NSData *jsonPayload = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
            ACOParseContext *context = [reg getParseContext];
            NSObject<ACOIBaseCardElementParser> *parser = [reg getCustomElementParser:type];
            if(!parser) {
                @throw [ACOFallbackException fallbackException];
            }
            ACOBaseCardElement *element = [parser deserialize:jsonPayload parseContext:context];
            ACRBaseCardElementRenderer *renderer = [reg getRenderer:[NSNumber numberWithLong:type.hash]];;
            if(renderer) {
                return [renderer render:viewGroup
                               rootView:rootView
                                 inputs:inputs
                        baseCardElement:element
                             hostConfig:acoConfig];
            }
        }
    }

    return nil;
}

@end
