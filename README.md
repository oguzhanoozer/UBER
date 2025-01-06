# UBER

# 📁 Project Structure

 ```

UberSwiftUI/
├── 📄 .gitignore
├── 📁 UberSwiftUI/
│   ├── 📁 Core/
│   │   ├── 📁 Authentication/
│   │   │   ├── 📁 ViewModels/
│   │   │   └── 📁 Views/
│   │   ├── 📁 Home/
│   │   │   ├── 📁 ViewModel/
│   │   │   └── 📁 Views/
│   │   ├── 📁 LocationSearch/
│   │   │   ├── 📁 ViewModel/
│   │   │   └── 📁 Views/
│   │   ├── 📁 Settings/
│   │   │   ├── 📁 View/
│   │   │   └── 📁 ViewModel/
│   │   ├── 📁 SlideMenu/
│   │   │   ├── 📁 View/
│   │   │   └── 📁 ViewModel/
│   │   └── 📁 Trips/
│   │       ├── 📁 Driver/
│   │       ├── 📁 Passenger/
│   │       └── 📁 Shared/
│   ├── 📁 Extensions/
│   ├── 📁 Managers/
│   ├── 📁 Models/
│   │   ├── 📁 Enum/
│   │   ├── 📄 AppSize
│   │   ├── 📄 DriverAnnotation
│   │   ├── 📄 SavedLocation
│   │   ├── 📄 Trip
│   │   ├── 📄 UberLocation
│   │   └── 📄 User
│   ├── 📁 Preview Content/
│   ├── 📁 Products/
│   ├── 📁 Service/
│   ├── 🖼️ Assets/
│   ├── 📄 GoogleService-Info
│   └── 📄 UberSwiftUIApp
└── 📦 Package Dependencies

 ```

# 📂 Folder Descriptions

## Core
<ul>
  <li>Authentication: User authentication related views and view models</li>
  <li>Home: Main screen components</li>
  <li>LocationSearch: Location search functionality</li>
  <li>Settings: App settings components</li>
  <li>SlideMenu: Side menu implementation</li>
  <li>Trips: Trip related features for both drivers and passengers</li>
</ul>

## Supporting Files
<ul>
  <li>Extensions: Swift extension files</li>
  <li>Managers: Manager classes for various services</li>
  <li>Models: Data models and enums</li>
  <li>Service: API and service layer implementations</li>
  <li>Products: Product related components</li>
</ul>

## Resources
<ul>
  <li>Assets: Images and media files</li>
  <li>Preview Content: SwiftUI preview resources</li>
  <li>GoogleService-Info: Firebase configuration file</li>
</ul>

# 📝 Firebase Data Structure

## Firebase Services Used
<ul>
  <li>Authentication: Email/Password and Phone authentication</li>
  <li>Firestore: Real-time database for user and trip data</li>
  <li>Storage: User profile images and related media</li>
</ul>

## Firebase Setup
<ul>
  <li>1. Create a Firebase project in Firebase Console</li>
  <li>2. Download GoogleService-Info.plist</li>
  <li>3. Add the file to project (Don't include in public repositories)</li>
  <li>4. Install Firebase via SPM (Swift Package Manager)</li>
</ul>

## Security Note
<ul>
  <li>⚠️ GoogleService-Info.plist should be added to .gitignore</li>
  <li>🔒 Keep Firebase credentials private</li>
  <li>🔑 Set up proper Firebase Security Rules</li>
</ul>

## Firebase Dependencies
<ul>
  <li>FirebaseAuth</li>
  <li>FirebaseFirestore</li>
  <li>FirebaseStorage</li>
  <li>FirebaseFirestoreSwift</li>
</ul>

# 📂 App Images

<img src="https://github.com/user-attachments/assets/6b8fccf9-887e-4d9b-bafe-90413bdd9b63" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro Max">

<img src="https://github.com/user-attachments/assets/f8a7d087-15ac-4044-bd8c-9102191e5892" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro Max">

<img src="https://github.com/user-attachments/assets/2559d3f0-cfdb-4be6-b3c1-b09d7354881c" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro Max">

<img src="https://github.com/user-attachments/assets/389ab224-2d65-486f-adb4-69f8c8a5fccd" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro">

<img src="https://github.com/user-attachments/assets/a7c5d992-96b5-49b2-bb5d-02b5224398cd" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro">

<img src="https://github.com/user-attachments/assets/e1710714-c105-44bd-8671-96ca582e15c7" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro">

<img src="https://github.com/user-attachments/assets/54a96c13-4268-4298-9fcd-75a6191788b0" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro Max">

<img src="https://github.com/user-attachments/assets/ced39e40-4aa7-48e3-8a1b-5340a5988cc4" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro Max">

<img src="https://github.com/user-attachments/assets/652bf263-e5c6-4364-9007-c702791bd46b" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro Max">

<img src="https://github.com/user-attachments/assets/96e33b5a-2d86-4b09-9bde-9497c2d24e3e" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro Max">

<img src="https://github.com/user-attachments/assets/586b1f56-c18f-475f-a5ba-abeb0409bf02" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro Max">

<img src="https://github.com/user-attachments/assets/f14e94f6-8bef-4fb4-b9f5-64416f2ba001" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro Max">

<img src="https://github.com/user-attachments/assets/77d2ca78-dd04-4edd-832d-8abb605c6b56" width="300" height="650" alt="Simulator Screenshot - iPhone 16 Pro Max">





