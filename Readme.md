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

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.14.35.png)

3. Type in a product name, I chose swiftTimerTest, hit next

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.15.15.png)

4. Choose a place to create it and click create

Now your project has been made!

5. Click Main.Storyboard you should it here on the left side panel:

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.15.56.png)

5. Make sure you see this in the right panel, if you don't, counting from the top far right click the 3rd icon "Hide or show the navigator", then "Show the file inspector" is the paper icon on the row of icons below that

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2023.30.16.png)

6. On the far right panel you should see "Interface Builder Document", underneath that you should see "Use Auto Layout", uncheck that

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.19.02.png)

7. It will ask you to disable size classes as well, click that

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.19.48.png)

8. Now your storyboard view controller should look like this:

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.20.22.png)

9. On the left panel click "Image.xcassets" its below Main.Storyboard
10. You should see this:

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.21.53.png)

11. Now go to https://www.dropbox.com/sh/e6azhungokq9nqq/AAA675E3DP_QDbi0kTmgSWROa and download as zip to get the image assets
12. Drag "blurBlue.png, blurBlue@2x.png, blurPurple.png, blurPurple@2x.png" into the section where AppIcon and LaunchImage are, it should now look like this once you drop them in:

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.26.08.png)

13. Click Main.Storyboard on the left panel
14. In the right panel at the bottom, make sure the "Show the Object Library" section is active, type in UIImageView

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.29.05.png)

15. Drag Image View into the view controller

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.30.31.png)

16. Click the image view
17. In the right panel at the very top, click "Show the attributes inspector" its the 4th icon from the left, looks like a nail

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.31.26.png)

18. Under image view, in the image text field, type in "blurBlue" it should autocomplete, and press enter. Your main storyboard view should look like this now:

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.33.05.png)

19. In the right panel at the bottom clear out your search for "UIimageview" and find "label", drag that on top of your blue background, it should now look like this:

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.36.20.png)

20. To change the color of the label, click the label, and in the right panel change the color field to white color
21. Double click the label to change what it says, I put "37:18" for generic time placeholder
22. In the right panel, under color you should see font, click the T and then click Font System-system and change that to custom

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.38.51.png)

23. Now right underneath click family and change that to Avenir Next, and for size type in 50
24. You probably noticed that the label box doesnt fit the text, so click it and drag the edges so that it is big enough to fit what you changed the label text to be.
25. In the right panel at the bottom in the Object Library, type in button, drag the first one you see onto the blue background
26. You can change the color of the button by click Text Color in the right panel
27. You can also change the text by double clicking, I made mine say "Start"
28. Click font, change it to custom or system, then back to custom, this will let you set font, size, etc. It should now look like this:

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.48.28.png)

29. Scroll all the way down in the right panel and you should see view, here you can change the background color of the button

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.54.24.png)

Great you have the basics set up for the first timer screen!
![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2023.07.16.png)

1. In the top left you should see something like this:

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot 2014-08-01 22.49.07)

2. Click "iPad2" or whatever is there, and change it to iPhone5s

![img](hhttps://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2022.48.57.png)

3. Now press the play button on the top far left, to see what the project looks like

You should see this in the simulator!

![img](https://dl.dropboxusercontent.com/u/10116/timerScreenshots/Screenshot%202014-08-01%2023.10.50.png)

