
# Localization of Interface resources WITHOUT using localized storyboards or XIB's

## Langauge

iOS Objective-C

## Preface

This facility allows you to use the IBDesigned tag to associate a UID to modify a resource's visual text when a storyboard is loading.

At the moment UILabel and UITextField (see categories/UIView+Localization.m)  are supported however im sure you can work this out.

Interface Viewcontrollers should inherit from "BaseViewController.h" (or implement similar functionality)

Enjoy !
