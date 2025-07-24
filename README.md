# 🌿 **Serenity Sounds** – Flutter Meditation App

> _"Relax. Breathe. Let nature guide your mind."_  
> 🎧 **Ambient nature sounds** for inner peace – in your pocket.

---

## ✨ **Features**

🔹 **Minimalistic UI** with background art  
🔹 One-tap **Play / Stop** functionality  
🔹 ⚡ Fast, lightweight, smooth experience  
🔹 🎧 Local audio via `just_audio`  
🔹 🎨 Icons powered by `FontAwesome`

---

## 🧠 **Technologies Used**

| 🔧 Tool / Package         | 💡 Use Case                        |
|--------------------------|-----------------------------------|
| **Flutter** 🐦            | Cross-platform development        |
| **just_audio** 🎧        | Playing local `.mp3` files        |
| **font_awesome_flutter** 🎨 | Stylish icons for buttons         |
| **AssetImage** 🖼️        | Background art per sound theme    |

---

## 📁 **Folder Structure**

```
📦 lib/
 ┣ 📄 main.dart
 ┣ 📄 const.dart             // Global styles & constants
 ┣ 📂 modes/
 ┃ ┗ 📄 item_model.dart     // Item model (name, image, audio)
 ┣ 📂 screens/
 ┃ ┗ 📄 home_page.dart      // Main app screen

📦 assets/
 ┣ 📂 meditation_audios/    // forest.mp3, ocean.mp3, etc.
 ┗ 📂 meditation_images/    // forest.jpeg, ocean.jpeg, etc.
```

---

## 🚀 **Getting Started**

Clone the project and run on your device/emulator:

```bash
git clone https://github.com/yourusername/serenity_sounds.git
cd serenity_sounds
flutter pub get
flutter run
```

---

## 📦 **Dependencies (pubspec.yaml)**

```yaml
dependencies:
  flutter:
    sdk: flutter
  just_audio: ^0.9.34
  font_awesome_flutter: ^10.4.0
```

⚠️ Don’t forget to include your assets:

```yaml
flutter:
  assets:
    - assets/meditation_audios/
    - assets/meditation_images/
```

---

## 🎧 **Included Sounds**

| 🌿 Sound     | 📷 Image                 | 🎵 File Path                          |
|-------------|--------------------------|---------------------------------------|
| **Forest**  | `forest.jpeg`            | `meditation_audios/forest.mp3`       |
| **Night**   | `night.jpeg`             | `meditation_audios/night.mp3`        |
| **Ocean**   | `ocean.jpeg`             | `meditation_audios/ocean.mp3`        |
| **Waterfall** | `waterfall.jpeg`       | `meditation_audios/waterfall.mp3`    |
| **Wind**    | `wind.jpeg`              | `meditation_audios/wind.mp3`         |

---

## 📸 **UI Sneak Peek**

> 🖼️ Each sound card includes:
> - ✅ Background image  
> - ✅ White text title  
> - ✅ `FontAwesome` Play / Stop icon with toggle  

---

## 💡 **Pro Tip**

You can extract the text style to a shared `TextStyle` in `const.dart` like this:

```dart
const TextStyle nameStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
```

---

## 👨‍💻 **Author**

Made with ❤️ by _Your Name_  
📬 Contact: [you@example.com](mailto:you@example.com)

---

## ☁️ License

This project is **open-source** under the MIT License.  
Feel free to modify, remix, and build upon it.

