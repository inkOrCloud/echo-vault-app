# Repository Guidelines

## Project Structure & Module Organization
The project is a Flutter application (`echo_vault_app`) following a feature-first architecture.
- **`lib/`**: Source code.
  - **`features/`**: Feature-specific logic (e.g., `auth`, `library`, `publish`, `setup`). Each feature contains its own `pages`, `widgets`, `providers`, and `services`.
  - **`core/`**: Shared infrastructure, including database (`db`), gRPC client (`grpc`), and configuration (`config`).
  - **`models/`**: Data models, including auto-generated protobuf classes in `generated/`.
  - **`providers/`** & **`services/`**: Global state management and service layers.
- **`test/`**: Mirrors the `lib/` structure for unit and widget tests.
- **`scripts/`**: Utility scripts, such as `gen_proto.sh` for protobuf generation.

## Build, Test, and Development Commands
| Command | Description |
| :--- | :--- |
| `flutter pub get` | Fetches and installs project dependencies. |
| `flutter run` | Builds and runs the app on a connected device or emulator. |
| `flutter test` | Executes all unit and widget tests in the `test/` directory. |
| `flutter analyze` | Runs the Dart static analyzer to check for code issues. |
| `sh scripts/gen_proto.sh` | Regenerates the protobuf/gRPC Dart files from `.proto` definitions. |

## Coding Style & Naming Conventions
- **Linting**: Follow the rules defined in `analysis_options.yaml` (based on `flutter_lints`).
- **Naming**: Use `snake_case` for file names and variables; use `PascalCase` for class names and enums.
- **State Management**: Use `flutter_riverpod` for state management. Keep provider logic in the `providers/` directory of each feature.
- **Formatting**: Run `dart format .` before committing to ensure consistent code style.

## Testing Guidelines
- **Framework**: Use `flutter_test` for all testing.
- **Structure**: Place tests in `test/` mirroring the `lib/` directory structure.
- **Naming**: Name test files as `<original_filename>_test.dart`.
- **Execution**: Ensure all tests pass by running `flutter test` before pushing changes.

## Commit & Pull Request Guidelines
- **Commits**: Use conventional commits (e.g., `feat:`, `fix:`, `chore:`, `docs:`). Keep messages concise and descriptive.
- **Pull Requests**:
  - Provide a clear description of the changes and the motivation behind them.
  - Link any related issues.
  - Ensure the code passes `flutter analyze` and `flutter test`.
  - Include screenshots or screen recordings for UI-related changes.
