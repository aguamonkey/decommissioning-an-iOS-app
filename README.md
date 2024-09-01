# LegacyAppDecommissioner

## Overview

LegacyAppDecommissioner is an iOS project that simulates the decommissioning process of a legacy app. The project demonstrates how to integrate Objective-C legacy code with a modern SwiftUI application and how to gracefully deprecate and disable existing features.

## Project Structure

- **LegacyApp/**: Contains the legacy Objective-C code (`ApiManager.h` and `ApiManager.m`).
- **SwiftApp/**: Contains the modern SwiftUI code (`UserInterfaceController.swift` and `LegacyViewControllerWrapper.swift`).
- **Docs/**: Documentation related to the project, including compliance details.
- **Scripts/**: Contains scripts for data management (backup and deletion).

## Key Components

### 1. **Objective-C Integration**
The `ApiManager` class is an Objective-C component that simulates fetching data from an API. It is integrated with the SwiftUI app via a bridging header and a SwiftUI `UIViewControllerRepresentable` wrapper.

### 2. **SwiftUI Interface**
The SwiftUI interface includes a view called `LegacyViewControllerWrapper` that embeds the `UserInterfaceController`, which in turn interacts with the `ApiManager`.

### 3. **Decommissioning Simulation**
To simulate the decommissioning process:
- We used method swizzling in Objective-C to override the `fetchDataFromAPI` method in `ApiManager`.
- The swizzled method disables the original functionality and logs a deprecation message instead of fetching data.

### 4. **Running the Project**
1. **Build and Run**: Build and run the project in Xcode.
2. **Observe UI**: Observe the embedded `UserInterfaceController` within the SwiftUI app.
3. **Check Console**: Check the console to see the deprecation message, which simulates the decommissioning of the API call.

## Data Management Scripts

As part of the decommissioning process, two scripts have been created to simulate the backup and deletion of user data.

### `data_backup.sh`

This script simulates the process of backing up user data to a specified directory.

#### Usage:
1. Open a terminal window.
2. Navigate to the `Scripts` directory.
3. Make the script executable by running:
   ```bash
   chmod +x data_backup.sh
4. Run the script:
   ```bash
   ./data_backup.sh
   
You can follow the same process for the data deletion.

