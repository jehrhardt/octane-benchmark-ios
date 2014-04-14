//
//  JEHAppDelegate.h
//  Octane
//
//  Created by Jan Ehrhardt on 14.04.14.
//  Copyright (c) 2014 Jan Ehrhardt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface JEHAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, readonly) JSContext *context;

@end
