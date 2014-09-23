(rdar://18424598)[rdar://18424598]

Summary:
Take this scenario:
I present a view controller using a presentation controller which presents in the current context and sizes the presented view controller to show some of the content behind it.

This controller then presents another view controller with presentationStyle of UIModalPresentationFullScreen.

By default the default modal presentation removes the presenting view controller's view from the view hierarchy for memory reasons. When dismissing this presented view controller the presentation then restores the presenting view controller's view back into the view hierarchy.

However the default iOS modal presentation does not make itself aware that the presenting view controller was presented with a custom presentation controller so when putting the view back it assumes the presenting view controller's view was full screen in its original container view and as such restores the presenting view controller's view to the wrong size.

Steps to Reproduce:
1. Create a Presentation controller subclass and set it so that the presenting view controller's view is not removed from the hierarchy and configure the presented view controller's view to cover e.g. half the presenting view controllers view
2. present another view controller from this presented view controller with a default modal presentation
3. dismiss this second presented view controller
4. observe the presentation inserts the presenting view controller's view back into the view hierarchy but with the wrong view metrics

Expected Results:
the second modal presentation (with the default settings) discovers that the presenting view controller was presented itself with a presentation controller and then the presentation queries the presenting view controller's presentation controller for its presented view and the correct metrics.

Actual Results:
The view controller which was presented with a presentation controller (which is the presenting view controller of the second presentation) has its view inserted back into the view hierarchy in the wrong place with the wrong size.

See Xcode project for example of incorrect presentation, correct presentation and a second presentation controller that does what UIKit should do.

Version:
iOS 8 GM (12A365)

Notes:


Configuration:
iPhone 5s iPhone 6, iOS Simulator,

Attachments:
'BrokenPresentationController.zip' was successfully uploaded.
