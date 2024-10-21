# Flutter Env Secrets Example

An example Flutter project demonstrating how to securely pass environment variables using `--dart-define-from-file`.

## Setup

1. **Ensure Flutter is Updated**

   Upgrade Flutter if needed:

   ```bash
   flutter upgrade
   ```

2. **Create Environment Files**

    - **Development (`env.dev.json`) and Production (`env.prod.json`) Files:**

      ```json
      {
        "API_URL": "https://your-api.example.com",
        "API_KEY": "your_api_key"
      }
      ```

   **Note:** Replace placeholder values with your actual API URLs and keys.

3. **Add Environment Files to `.gitignore`**

   ```gitignore
   env.dev.json
   env.prod.json
   ```

4. **Update `lib/main.dart`**

   Use `String.fromEnvironment` to access the variables:

   ```dart
   static const apiUrl = String.fromEnvironment('API_URL', defaultValue: 'Not Found');
   static const apiKey = String.fromEnvironment('API_KEY', defaultValue: 'Not Found');
   ```

## Simple Usage

- **Run the App in Development Mode:**

  ```bash
  flutter run --dart-define-from-file=env.dev.json --flavor development -t lib/main_development.dart
  ```

- **Build the App for Production:**

  ```bash
  flutter build apk --release --dart-define-from-file=env.prod.json --flavor production -t lib/main_production.dart
  ```

## CI/CD Integration

- Store environment variables securely in your CI/CD platform and generate environment files at build time.

---

**Feel free to reach out if you have any questions!**

