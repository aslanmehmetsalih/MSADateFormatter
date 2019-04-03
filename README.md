# MSADateFormatter

[![CI Status](https://img.shields.io/travis/aslanmehmetsalih/MSADateFormatter.svg?style=flat)](https://travis-ci.org/aslanmehmetsalih/MSADateFormatter)
[![Version](https://img.shields.io/cocoapods/v/MSADateFormatter.svg?style=flat)](https://cocoapods.org/pods/MSADateFormatter)
[![License](https://img.shields.io/cocoapods/l/MSADateFormatter.svg?style=flat)](https://cocoapods.org/pods/MSADateFormatter)
[![Platform](https://img.shields.io/cocoapods/p/MSADateFormatter.svg?style=flat)](https://cocoapods.org/pods/MSADateFormatter)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 8.0+

## Installation

MSADateFormatter is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MSADateFormatter'
```

## Usage

MSADateFormatter comes with these formats:
```swift
/// 2-digit year
/// Example: 08
case yy

/// 4-digit year
/// Example: 2008
case yyyy

/// The quarter of the year. Use QQ if you want zero padding.
/// Example: 4
case Q

/// Quarter including "Q"
/// Example: Q4
case QQQ

/// Quarter spelled out
/// Example: 4th quarter
case QQQQ

/// The numeric month of the year. A single M will use '1' for January.
/// Example: 12
case M

/// The numeric month of the year. A double M will use '01' for January.
/// Example: 12
case MM

/// The shorthand name of the month
/// Example: Dec
case MMM

/// Full name of the month
/// Example: December
case MMMM

/// Narrow name of the month
/// Example: D
case MMMMM

/// The day of the month. A single d will use 1 for January 1st.
/// Example: 14
case d

/// The day of the month. A double d will use 01 for January 1st.
/// Example: 14
case dd

/// The day of week in the month
/// Example: 3rd Tuesday in December
case F

/// The day of week in the month
/// Example: Tues
case E

/// The full name of the day
/// Example: Tuesday
case EEEE

/// The narrow day of week
/// Example: T
case EEEEE

/// The 12-hour hour.
/// Example: 4
case h

/// The 12-hour hour padding with a zero if there is only 1 digit
/// Example: 04
case hh

/// The 24-hour hour.
/// Example: 16
case H

/// The 24-hour hour padding with a zero if there is only 1 digit.
/// Example: 16
case HH

/// AM / PM for 12-hour time formats
/// Example: PM
case a

/// The minute, with no padding for zeroes.
/// Example: 35
case m

/// The minute with zero padding.
/// Example: 35
case mm

/// The seconds, with no padding for zeroes.
/// Example: 8
case s

/// The seconds with zero padding.
/// Example: 08
case ss
```

or Create your format:
```swift
import MSADateFormatter

extension Date.Format {
    static let dateTime = Date.Format.custom(rawValue: "yyyy-MM-dd HH:mm:ss")
}
```

Set locale(optional):
```swift
MSADateFormatter.locale = Locale(identifier: "us")
```

String to Date:
```swift
let dateString = "2001-01-01 01:01:00"
let date = Date.from(dateString, format: .dateTime)
```

Date to String:
```swift
let date = Date()
let dateString = date.to(.MMMM)
```

TimeInterval to Date:
```swift
let timeInterval = TimeInterval(exactly: 1549611277)!
let date = Date.from(timeInterval)
```

## License

MSADateFormatter is available under the MIT license. See the LICENSE file for more info.
