//
//  JEHAppDelegate.m
//  Octane
//
//  Created by Jan Ehrhardt on 14.04.14.
//  Copyright (c) 2014 Jan Ehrhardt. All rights reserved.
//

#import "JEHAppDelegate.h"

@implementation JEHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _context = [[JSContext alloc] init];

    [self loadBenchmark];

    return YES;
}

- (void)loadBenchmark
{
    [self loadJavaScript:@"base"];
    [self loadJavaScript:@"richards"];
    [self loadJavaScript:@"deltablue"];
    [self loadJavaScript:@"crypto"];
    [self loadJavaScript:@"raytrace"];
    [self loadJavaScript:@"earley-boyer"];
    [self loadJavaScript:@"regexp"];
    [self loadJavaScript:@"splay"];
    [self loadJavaScript:@"navier-stokes"];
    [self loadJavaScript:@"pdfjs"];
    [self loadJavaScript:@"mandreel"];
    [self loadJavaScript:@"gbemu-part1"];
    [self loadJavaScript:@"gbemu-part2"];
    [self loadJavaScript:@"code-load"];
    [self loadJavaScript:@"box2d"];
    [self loadJavaScript:@"zlib"];
    [self loadJavaScript:@"zlib-data"];
    [self loadJavaScript:@"typescript"];
    [self loadJavaScript:@"typescript-input"];
    [self loadJavaScript:@"typescript-compiler"];
}

- (void)loadJavaScript:(NSString *)file
{
    NSString *path = [[NSBundle mainBundle] pathForResource:file
                                                      ofType:@"js"];

    NSString *script = [NSString stringWithContentsOfFile:path
                                                 encoding:NSUTF8StringEncoding
                                                    error:NULL];

    JSValue *value = [self.context evaluateScript:script];
    NSLog(@"JavaScript file %@ loaded with result: %@", file, [value toString]);
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
