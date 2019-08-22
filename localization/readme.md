
# Localization of Interface resources WITHOUT using localized storyboards or XIB's

## Langauge

iOS Objective-C

## Preface

This facility allows you to use the IBInspectable tag to associate a UID to modify a resource's visual text when a viewcontroller is loading (viewwillappear).

At the moment UILabel and UITextField (see categories/UIView+Localization.m)  are supported however im sure you can work this out.

Interface Viewcontrollers should inherit from "BaseViewController.h" (or implement similar functionality)

Enjoy !

## Implementation

The tag is defined in the localizable.strings file - this uid is used as a reference point for your interface object - see main.storyboard and the single label - click on the properies in the inspector to change the information.

## Usage

This code is free to use, modify and distribute without rights acknowledgement

## Exeperience Level

Middle to Expert - Understanding of adding properties to base-classes (through categories) using objc-runtime.
