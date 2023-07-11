# geniUs

A personal productivity and self-discovery iOS app built with SwiftUI. It combines a daily task dashboard, a weekly timetable, a personal profile page, and a fun-facts viewer in a single tab-based interface.

## Features

- **Welcome screen** — full-screen splash with a background image and a "Get started" prompt that flows into the main app
- **Today view** — shows the current date, a daily progress summary (tasks completed / total, percentage), and an "In Progress" task list; links to the calendar from a header icon
- **Timetable (Calendar) view** — horizontal scrollable week view (Monday–Friday) letting you swipe between days
- **Favorites view** — displays a personal profile's hobbies (SF Symbols), favourite foods (emoji), and favourite colours as swatches
- **Fun Facts view** — taps a button to reveal a random trivia fact drawn from a curated list
- **Dark mode support** — all views adapt to the system colour scheme

## Tech

- Swift 5 / SwiftUI
- Xcode 14+
- iOS 16+ target
- No third-party dependencies

## Running the app

1. Clone the repository:
   ```
   git clone https://github.com/mahaamimran/geniUs.git
   ```
2. Open `geniUs.xcodeproj` in Xcode.
3. Select an iPhone simulator (or a connected device) from the scheme menu.
4. Press **Run** (⌘R).

The entry point is `geniUsApp.swift`; it loads `WelcomeView` on launch.

## Design

The UI was designed in Figma before being implemented in SwiftUI.  
[View the Figma file](https://www.figma.com/file/kTbYvrL4qlLG5yx1Z6vDTY/Project-geniUs?type=design&node-id=0%3A1&mode=design&t=9h1nCnQS5Ewy0jUc-1)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://github.com/mahaamimran/geniUs/blob/main/UI/Welcome.png" alt="Welcome screen" width="135" height="292.5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://github.com/mahaamimran/geniUs/blob/main/UI/Today.png" alt="Today view" width="135" height="292.5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://github.com/mahaamimran/geniUs/blob/main/UI/Calendar.png" alt="Calendar view" width="135" height="292.5">

## Notes

This is an early SwiftUI project built as a UI exploration and learning exercise. Several views (Home, Favorites, Timetable) contain placeholder data and are works in progress.
