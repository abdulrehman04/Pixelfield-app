## ✨ About This Project

This project was developed as part of a technical assessment for **Pixelfield**.  
It showcases clean architecture, offline-first design, responsive layouts, and state management best practices using `HydratedBloc`.

Feel free to explore the codebase — it's built with extensibility and real-world scalability in mind.

Looking forward to your feedback and the opportunity to contribute further at Pixelfield.

# PixelField Test Project

A Flutter showcase for a Pixelfield test app — featuring offline-first behavior, hydrated state management, and smooth preloaded splash navigation.

---

## Features

- **Offline-first Architecture**  
  Loads data from local memory when offline and syncs when online.

- **HydratedBloc**  
  Automatically caches and restores state across app restarts.

- **Splash Preloading**  
  Pre-fetches collection data on app launch for snappy UI transitions.

- **Connectivity Aware**  
  Smart fallback if internet is unavailable, preserving last good state.

- **Fully web supported routing**  
  Is web ready as it comes fully integrated with `go_router` with support for deep linking, path/query parameters, and full browser history integration. Works across Flutter Web, Android, iOS, and Desktop.

- **Fully templated for responsiveness accross Desktop, tablet and mobile**  
  UI layout adapts seamlessly across desktop, tablet, and mobile using `flutter_screenutil` and custom `Config`. All pages are designed with flexible layout considerations for various screen sizes and orientations.


---

## Stack

- **Flutter**
- **Bloc / HydratedBloc**
- **GoRouter**
- **Connectivity Plus**
- **ScreenUtil**
- **Provider**

---

## Dependencies & Why

- **flutter_bloc** – Core state management using the Bloc pattern for clean logic and separation of concerns.
- **hydrated_bloc** – Automatically persists Bloc state across app restarts, enabling offline-first support.
- **equatable** – Simplifies equality checks in Bloc states and events, improving performance.
- **provider** – Lightweight state access for non-Bloc use cases like theme or global config or simply showing a progress indicator on a page - non API page level tasks.
- **go_router** – Declarative routing with support for nested routes, path/query/extra parameters.
- **connectivity_plus** – Detects internet availability for smart offline fallback behavior.
- **flutter_screenutil** – Makes UI adaptive to different screen sizes and pixel densities.
- **google_fonts** – Easily apply beautiful and consistent typography with Google Fonts.
- **path_provider** – Used by `hydrated_bloc` to store cache in device-safe directories.

---

## Clean BloC design

- Repository interface for testability
- Preload logic separated in DataProvider
- HydratedBloc fromJson/toJson to persist state cleanly

---

## Room for Improvement

This project was built as a technical showcase and is designed with scalability in mind. Here are some areas for potential enhancement that I would have LOVED to add if I had the time:

- **CI/CD Pipeline**  
  Automate builds, tests, and deployments using GitHub Actions, GitLab CI, or Bitrise. This ensures reliable delivery and faster iteration cycles.

- **Unit & Widget Testing**  
  Add unit tests for blocs and models, and widget tests for key UI components to ensure app stability and catch regressions early.

- **Error Logging & Crash Reporting**  
  Integrate a service like Sentry or Firebase Crashlytics to track runtime exceptions and improve observability.

- **Local Storage Layer**  
  Replace or supplement HydratedBloc with a structured offline cache using `Hive` or `Isar` for long-term persistence and relational querying.

- **Manual Sync & Pull-to-Refresh**  
  Let users manually re-fetch the collection if internet is restored, with optional visual indicators for stale data.

- **Multi-language Support (i18n)**  
  Add localization support for a global audience using `flutter_localizations` and `intl`.

---

## Author

Made by **Abdul Rehman**
Flutter Developer | Senior Software Engineer | (Now) Wine Collector (virtually)

Feel free to reach out if you're curious about the architecture, or just want to talk Flutter.

Once again, looking forward to your feedback and the opportunity to contribute further at Pixelfield.