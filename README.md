# Phoenix-ObjC

[![CI Status](http://img.shields.io/travis/rokkincat/Phoenix-ObjC.svg?style=flat)](https://travis-ci.org/rokkincat/Phoenix-ObjC)
[![Version](https://img.shields.io/cocoapods/v/Phoenix-ObjC.svg?style=flat)](http://cocoadocs.org/docsets/Phoenix-ObjC)
[![License](https://img.shields.io/cocoapods/l/Phoenix-ObjC.svg?style=flat)](http://cocoadocs.org/docsets/Phoenix-ObjC)
[![Platform](https://img.shields.io/cocoapods/p/Phoenix-ObjC.svg?style=flat)](http://cocoadocs.org/docsets/Phoenix-ObjC)

## Example

```objc
// Opens connection to Phoenix
Phoenix *phoenix = [[Phoenix alloc] initWithURL:[NSURL URLWithString:@"ws://10.0.0.12:4000/ws"]];
[phoenix setDelegate:self];
[phoenix open];

// Creates, listens on, and joins channel
PhoenixChannel *channel = [[PhoenixChannel alloc] initWithName:@"channel" topic:@"incoming" message:nil withPhoenix:_phoenix];
[channel on:@"response:event" handleEventBlock:^(id message) {
    NSLog(@"Message - %@", message);
}];
[channel join];
```

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

SocketRocket - 0.3.1-beta2

## Installation

Phoenix-ObjC is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "Phoenix-ObjC"

## Author

Josh Holtz, josh@rokkincat.com

## License

Phoenix-ObjC is available under the MIT license. See the LICENSE file for more info.

