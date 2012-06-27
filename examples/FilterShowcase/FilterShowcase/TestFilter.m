//
//  TestFilter.m
//  FilterShowcase
//
//  Created by boot on 6/26/12.
//  Copyright (c) 2012 Cell Phone. All rights reserved.
//

#import "TestFilter.h"

NSString *const kTestFilterFragmentShaderString = SHADER_STRING
(
 varying highp vec2 textureCoordinate;
 
 uniform sampler2D inputImageTexture;
 
 void main()
 {
     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);
     
     gl_FragColor = vec4((textureColor.rgb + vec3(0.25)), textureColor.w);
 }
 );

@implementation TestFilter

- (id)init;
{
    if (!(self = [super initWithFragmentShaderFromString:kTestFilterFragmentShaderString]))
    {
		return nil;
    }
    
    return self;
}


@end
