# BirthdayNoteTaker

A simple birthday note app built with Swift and UIKit.

This app allows the user to save a name and birthday locally using `UserDefaults`, display saved data when the app is reopened, and delete stored data when needed.

## About

This project is one of the hands-on apps I built while taking a Udemy iOS development course.

It was created as a practice project to learn and apply:

- UIKit basics
- `IBOutlet` / `IBAction` connections
- Reading user input from `UITextField`
- Updating the UI using `UILabel`
- Local data persistence with `UserDefaults`

## Tech Stack

- Swift
- UIKit
- Xcode
- Storyboard
- UserDefaults

## Features

- Enter a name and birthday
- Save data locally with `UserDefaults`
- Automatically load saved data when the app is reopened
- Delete stored name and birthday data
- Clear text fields after deleting saved data
- Show default label values when there is no saved data

## Differences from Original Project

Compared to the original course project, this version includes:

- Safer data reading with `string(forKey:)`
- Safer optional handling using `?? ""`
- Empty value checks before showing saved data
- Default label text when there is no stored value
- A `deleteClicked` action to remove saved data
- Clearing text fields after deleting saved values

## Notes

- This is a course practice project
- The app is intentionally simple as an early learning exercise
- The project focuses on basic UIKit usage and local data storage
- Future improvements may include input validation, a `UIDatePicker`, and a more polished interface
