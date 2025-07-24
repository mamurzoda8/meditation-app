# 🌿 **Serenity Sounds** – Flutter Meditation App

<p align="center">
  <img src="assets/logo.png" alt="App Logo" width="120"/>
</p>

> _"Let nature clear your mind."_  
> A modern Flutter app delivering immersive **ambient nature sounds** with stylish visuals and smooth audio control.

---

## ✨ Features

- 🎵 Tap-to-Play or Stop ambient nature sounds
- 🖼️ Background image cards with smooth rounded corners
- 🎧 Powered by `just_audio` for high-performance playback
- 🎨 Elegant `FontAwesome` icons (Play/Stop)
- 🌑 Dark-themed background for a relaxed mood
- 💡 Clean & maintainable architecture with models/constants separated

---

## 📱 UI Preview (Description)

Each card in the list includes:

- ✅ A beautiful image (Forest, Night, Ocean, etc.)
- ✅ A white title (styled via `const.dart`)
- ✅ A rounded container with a full image background
- ✅ A white **Play / Stop** button (toggle logic)
- ✅ Smooth background color: `Color(112, 111, 111)` (matte dark)

---

## 📦 Tech Stack

| Tool / Package              | Purpose                                |
|----------------------------|----------------------------------------|
| **Flutter** 🐦              | UI framework                           |
| **just_audio** 🎧          | Audio playback                         |
| **font_awesome_flutter** 🎨| Icons for play/stop buttons            |
| **dart:ui**                | Optional UI utilities (e.g. blur)      |

---

## 📁 Folder Structure

```
lib/
├── const.dart               // Text styles (e.g. nameStyle)
├── modes/
│   └── item_model.dart      // Item model (name, image, audio)
├── screens/
│   └── home_page.dart       // Main screen (with player & list)
├── main.dart                // App entry point

assets/
├── meditation_audios/       // .mp3 sound files
│   ├── forest.mp3
│   ├── night.mp3
│   └── ...
├── meditation_images/       // .jpeg background images
│   ├── forest.jpeg
│   ├── ocean.jpeg
│   └── ...
└── logo.png                 // App logo (optional)
```

---

## 🛠️ Getting Started

1. Clone the project:
   ```bash
   git clone https://github.com/yourusername/serenity_sounds.git
   cd serenity_sounds
   ```

2. Install packages:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

---

## 🔧 `pubspec.yaml` Setup

```yaml
dependencies:
  flutter:
    sdk: flutter
  just_audio: ^0.9.34
  font_awesome_flutter: ^10.4.0

flutter:
  assets:
    - assets/meditation_audios/
    - assets/meditation_images/
    - assets/logo.png
```

---

## 🔊 Available Sound Items

| 🔉 Name        | 🎵 Audio Path                        | 🖼️ Image Path                      |
|---------------|--------------------------------------|-----------------------------------|
| **Forest**    | `meditation_audios/forest.mp3`       | `meditation_images/forest.jpeg`   |
| **Night**     | `meditation_audios/night.mp3`        | `meditation_images/night.jpeg`    |
| **Ocean**     | `meditation_audios/ocean.mp3`        | `meditation_images/ocean.jpeg`    |
| **Waterfall** | `meditation_audios/waterfall.mp3`    | `meditation_images/waterfall.jpeg`|
| **Wind**      | `meditation_audios/wind.mp3`         | `meditation_images/wind.jpeg`     |

---

## 💡 Tip

Extract shared styles (like text color) to `const.dart`:

```dart
const TextStyle nameStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
```

---