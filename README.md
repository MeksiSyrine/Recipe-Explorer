# Recipe-Explorer

Recipe-Explorer is a Flutter mobile application for discovering, searching, and managing recipes. It allows users to explore a variety of recipes, search in real-time, and save their favorites locally.

## Features

- Browse random, popular, and recommended recipes
- View recipes by category
- Detailed recipe pages with instructions, ingredients, and images
- Real-time search with instant results
- Pull-to-refresh and lazy loading for recipe lists
- Save favorite recipes locally (using Hive)
- Fetch recipes and categories from a REST API

## Tech Stack

- **Flutter** (UI framework)
- **Dart** (programming language)
- **Riverpod** (state management)
- **Hive** (local storage for favorites)
- **REST API** (for recipe data)

## Requirements

- **Flutter SDK**: 3.5.0 or higher
- **Dart**: 3.5.0 or higher
- **Java**: 17 (for Android builds)
- **Android SDK**: 33+ (compileSdkVersion)
- **Xcode**: 14+ (for iOS builds, if needed)

## Dependencies

See `pubspec.yaml` for the full list. Main dependencies include:

- flutter
- hooks_riverpod
- hive
- hive_flutter
- path_provider
- cached_network_image
- google_fonts
- get_storage
- url_launcher
- dio
- iconsax_plus

## Getting Started

1. **Clone the repository:**
   ```sh
   git clone https://github.com/MeksiSyrine/Recipe-Explorer.git
   cd Recipe-Explorer
   ```
2. **Install dependencies:**
   ```sh
   flutter pub get
   ```
3. **Run the app:**
   ```sh
   flutter run
   ```

