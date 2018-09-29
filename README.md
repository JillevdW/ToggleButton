# ToggleButton

ToggleButton is a subclass of UIButton that takes care of a very simple problem: creating a button with a toggleable state. 

While a UISwitch could be used for this, buttons that act like a toggle are often used in apps, as shown below in the native Clock app.

![Toggleable buttons being used in the native Clock app.](https://github.com/JillevdW/ToggleButton/blob/master/RepoAssets/bedtime.gif)



- [Features](#features)
- [Usage](#usage)
    - **Intro -** [How to use](#how-to-use)
    - **Functions -** [setToggled](#setToggled(on: Bool)), [toggle](#toggle())
    - **Variables -** [isToggled](isToggled)

    

## Installation

Simply download the ToggleButton.swift file and put it in your project directory.

## Usage

#### How to use

There are multiple ways to start using a ToggleButton: you can either create it through the Storyboard or you can create it programmatically. 

####Storyboard

If you create the button through the Storyboard, keep in mind that you **need to set the `Type` property in the Attributes Inspector to `Custom`**.

Now you need to set the images for the button. Since the images are both `@IBInspectable`, we can do this in the Attributes Inspector.

Creating actions is the same as a regular UIButton, however, make sure you **set the `Type` property to `ToggleButton`** so your sender is of type `ToggleButton`. 

####Programmatically

If you want to create the button programmatically, you can do so with one of these two initializers:

```swift 
ToggleButton(frame: CGRect)
```

```swift 
ToggleButton(frame: CGRect, offImage: UIImage?, onImage: UIImage?)
```

The first initializer can be used if you don't know the images to display during creation of the button. However, since the button needs these images to function, these then need to be set later, like this:

```swift
let button = ToggleButton(frame: CGRect)
button.offImage = UIImage(...)
button.onImage = UIImage(...)
```



## Functions/Variables

### setToggled(on: Bool)

This function takes a boolean value to indicate the toggle state, and will then apply that to the button.

```swift
button.setToggled(on: true)
```

### toggle()

This function toggles the state of the button.

```swift
button.toggle()
```

### isToggled

A computed property that returns the state of the button.

```swift
let state = button.isToggled
```

## Features

- [x] Create a simple toggleable button
- [x] Have it work through storyboard and programatically
- [ ] Your ideas?

## Requirements

- iOS 8.0+
- Xcode 9.0+ (not entirely sure)
- Swift 3.0+ (but I did update to 4.0, not sure if that broke something)


## Author

Jille van der Weerd, [@Twitter](https://twitter.com/Jillevd_W)

## License

Do with it whatever you please :thumbsup:
