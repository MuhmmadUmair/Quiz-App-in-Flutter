# 📝 Flutter Quiz App

A fun and interactive **Quiz App** built with Flutter.
The app asks a series of questions and, based on the answers, shows a personality result such as **Innocent, Pretty Likeable, Strange, or Bad**.

---

## 🚀 Features

* ✅ Multiple-choice questions with scoring system
* ✅ Personality-based results (Innocent, Likeable, Strange, Bad)
* ✅ Reset quiz option to start again
* ✅ Clean and responsive UI
* ✅ Modular code with reusable widgets (`Question`, `Answer`, `Quiz`, `Result`)

---

## 📂 Project Structure

```
lib/
├── main.dart            # App entry point, quiz logic
├── quiz.dart            # Quiz widget (questions + answers)
├── question.dart        # Widget for displaying a question
├── answer.dart          # Widget for displaying an answer button
└── result.dart          # Widget for showing result based on score
```

---

## 🛠️ Technologies Used

* [Flutter](https://flutter.dev) – Cross-platform mobile framework
* [Dart](https://dart.dev) – Programming language for Flutter

---

## 📸 Screenshots

![alt text](https://github.com/MuhmmadUmair/Quiz-App-in-Flutter/blob/4aa32af8b2206cbf100094e5346088cbd6a4efe7/Screenshot.png)


---

## ⚙️ Getting Started

### Prerequisites

* Install [Flutter SDK](https://flutter.dev/docs/get-started/install)
* Setup emulator (Android/iOS) or real device

### Installation

1️⃣ Clone the repository

```bash
git clone https://github.com/your-username/flutter_quiz_app.git
cd flutter_quiz_app
```

2️⃣ Install dependencies

```bash
flutter pub get
```

3️⃣ Run the app

```bash
flutter run
```

---

## 🧰 How It Works

1. User answers multiple-choice questions.
2. Each answer has a **score**.
3. At the end of the quiz, scores are summed up.
4. Based on the total score, a **personality type** is displayed:

   * ≤ 8 → *Awesome and Innocent*
   * ≤ 12 → *Pretty Likeable*
   * ≤ 16 → *Strange*
   * > 16 → *Bad*

---

## 🌟 Future Enhancements

* Add more questions & categories
* Add animations & sound effects
* Store user results history
* Share results on social media

---

## 👨‍💻 Author

**Muhammad Umair**

* 🌐 [LinkedIn](https://www.linkedin.com/in/muhmmadumair3233?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app)
