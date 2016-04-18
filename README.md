FBQuoteWebView
==============

![CocoaPods](https://cocoapod-badges.herokuapp.com/v/FBQuoteWebView/badge.png) [![works badge](https://cdn.rawgit.com/nikku/works-on-my-machine/v0.2.0/badge.svg)](https://github.com/nikku/works-on-my-machine)  [![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

:blue_book: Share the contents in the web view as QUOTE to Facebook.

![Overview screenshot](https://raw.githubusercontent.com/KimDarren/FBQuoteWebView/master/Screenshots/screenshot01.png)

Before Installation
-------------------

`FBQuoteWebView` uses the Facebook SDK _(FBSDKShareKit)_.

If your project is not optimized to Facebook yet, you have to follow the  [Facebook iOS getting start guide](https://developers.facebook.com/docs/ios/getting-started).

Installation
------------

Use [CocoaPods](http://cocoapods.org).

```ruby
pod 'FBQuoteWebView'
```


Usage
-----

Just initialize and use `FBQuoteWebView` same as `UIWebView`.

```obj-c
NSString *demoURLString = @"https://github.com/KimDarren/FBQuoteWebView";
NSURL *demoURL = [NSURL URLWithString:demoURLString];
NSURLRequest *request = [[NSURLRequest alloc] initWithURL:demoURL];

_webView = [[FBQuoteWebView alloc] init];
[_webView loadRequest:request];

// Customizable menu title.
_webView.menuTitle = @"Share Quotes";
```

So simple, right?

Demo
----

There is a simple DEMO PROJECT using `FBQuoteWebView` in [Demo](Demo/) directory.

`pod install` before run the demo project.

Screenshots
-----------

* If users highlight any sentences in the `FBQuoteWebView`, they can see the **Share To Facebook** item.

	![Demo Screenshot 1](https://raw.githubusercontent.com/KimDarren/FBQuoteWebView/master/Screenshots/screenshot02.png)
	
* By touching the item, users can **share the link** with the **QUOTE** that they highlighted.

	![Demo screenshot 2](https://raw.githubusercontent.com/KimDarren/FBQuoteWebView/master/Screenshots/screenshot03.png)


License
-------

**FBQuoteWebView** is under MIT license. See the [LICENSE](LICENSE) file for more info.