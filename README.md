# 🔊 Sound Effects Example

A minimal SwiftUI app demonstrating how to play sound effects and background music in iOS using AVFoundation — including looping background tracks and one-shot sound effects triggered by button taps.

---

## 🤔 What this is

This project shows the simplest approach to audio playback in a SwiftUI app. A `SoundManager` class wraps `AVAudioPlayer` to handle both looping background music and short-burst sound effects, with a SwiftUI `ContentView` that wires up buttons to trigger each sound.

## ✅ Why you'd use it

- **SoundManager** — singleton that manages background music looping and sound effect playback
- **Bundled audio** — includes `background-music.mp3` and `huh.mp3` so it runs out of the box
- **Minimal boilerplate** — the entire audio layer is a single file, easy to drop into any project
- **AVFoundation only** — no dependencies, no packages

## 📺 Watch on YouTube

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/qjugxzYfkHQ)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@NoahDoesCoding97).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/SoundEffectsExample.git
cd SoundEffectsExample
```

### 2. Open in Xcode
- Double-click `SoundEffectsExample.xcodeproj`

### 3. Set Your Development Team
In Xcode: **TARGET → Signing & Capabilities → Team**

### 4. Update the Bundle Identifier
Change `com.example.MyApp` to a unique identifier (e.g., `com.yourname.SoundEffects`).

---

## 🛠️ Notes

- To add your own sounds, drop audio files into the project and update the filenames in `SoundManager.swift`.
- Background music loops automatically; sound effects play once per call.
- If you see a code signing error, check that Team and Bundle ID are set.

## 📦 Requirements

- iOS 16+
- Xcode 15+
- Swift 5.9+

---

📺 [Watch the guide on YouTube](https://youtu.be/qjugxzYfkHQ)
