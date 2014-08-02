# Swift Time Tracker App

After pressing start the timer counts until you press stop. Then it adds it to a table to view all results later. This only works in memory. We won't be using any storage just yet.

In the future we may use realm.io or parse to store the data

## Walkthrough Guide

What you will be making

![Start Screen](https://dl.dropboxusercontent.com/u/10116/timerAssets/StartTimer320.png)
![Saved Times Screen](https://dl.dropboxusercontent.com/u/10116/timerAssets/SavedTimes320.png)

### Getting started

1. Open up XCode -> Click "Create a new Xcode project"
2. Select Single View Application and hit next
[img]
3. Type in a product name, I chose swiftTimerTest, hit next
[img]
4. Choose a place to create it and click create

Now your project has been made!

5. Click Main.Storyboard on the left you should see this:

[img]

6. On the far right panel you should see "Interface Builder Document", underneath that you should see "Use Auto Layout", uncheck that
[img]
7. It will ask you to disable size classes as well, click that
[img]
8. Now your storyboard view controller should look like this:
[img]
9. On the left panel click "Image.xcassets" its below Main.Storyboard
10. You should see this:
[img]
11. Now go to https://www.dropbox.com/sh/e6azhungokq9nqq/AAA675E3DP_QDbi0kTmgSWROa and download as zip to get the image assets
12. Drag "blurBlue.png, blurBlue@2x.png, blurPurple.png, blurPurple@2x.png" into the section where AppIcon and LaunchImage are, it should now look like this once you drop them in:
[img]
13. Click Main.Storyboard
14. In the right panel at the bottom, make sure the "Show the Object Library" section is active, type in UIImageView
[img]
15. Drag Image View into the view controller
[img]
16. Click the image view
17. In the right panel at the very top, click "Show the attributes inspector" its the 4th icon down, looks like a nail
[img]
18. Under image view, in the image text field, type in "blurBlue" it should autocomplete, and press enter
[img]
19. In the right panel at the bottom clear out your search for "UIimageview" and find "label", drag that on top of your blue background
[img]
20. To change the color of the label, in the right panel change the color field to white color
21. Double click the label to change what it says, I put "37:18" for generic time placeholder
22. In the right panel, under color you should see font, click the T and then click Font System-system and change that to custom
23. Now right underneath click family and change that to Avenir Next, and for size type in 50
24. 
