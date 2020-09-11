# GPVideoPlayer

[![Version](https://img.shields.io/cocoapods/v/GPVideoPlayer.svg?style=flat)](https://cocoapods.org/pods/GPVideoPlayer)
[![License](https://img.shields.io/cocoapods/l/GPVideoPlayer.svg?style=flat)](https://cocoapods.org/pods/GPVideoPlayer)
[![Platform](https://img.shields.io/cocoapods/p/GPVideoPlayer.svg?style=flat)](https://cocoapods.org/pods/GPVideoPlayer)

## Overview
It is simple and easy to use video player with playback controls written in Swift.

- [x] Live video streaming from the given URL.
- [x] Playback video controls - volume, rewind, forward etc.
- [x] Integrated with full screen video mode.

## Requirements

- [x] Xcode 10.
- [x] Swift 4.2.
- [x] iOS 10 or higher.

## Example

To run the example project,

1. Clone the repo.
2. Open `GPVideoPlayer -> Example -> GPVideoPlayer.xcworkspace`
3. Run the project (cmd + R)

## Code
- [Example/ViewController.swift](Example/ViewController.swift)
- [Example/GPVideoPlayer.swift](Example/GPVideoPlayer.swift)

## Customizing

1. Bring the `.swift` files and image assets into a project where you are going to use it, for example in a `UIViewController`.

2. Create a GPVideoPlayer object using the view's bounds where you want to show the player and add it as a `subView`.
```swift
if let player = GPVideoPlayer.initialize(with: self.view.bounds) {
    self.view.addSubview(player)
    //Player customization...
}
```
In the above example, I'm adding player to the `viewController's subView`.

3. Load the player with the URLs of the videos.
```swift
let url = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!
player.loadVideo(with: url)
```

4. Additional customization parameters.
```swift
player.isToShowPlaybackControls = true
player.isMuted = true
```

5. Play the videos in player.
```swift
player.playVideo()
```

## License

GPVideoPlayer is available under the MIT license. See the LICENSE file for more info.
