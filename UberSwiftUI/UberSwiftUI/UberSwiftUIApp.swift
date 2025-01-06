//
//  UberSwiftUIApp.swift
//  UberSwiftUI
//
//  Created by oguzhan on 26.12.2024.
//

import SwiftUI
import FirebaseCore


/// TODO: convert size to static data
 
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct YourApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//    @StateObject var locationViewModel = LocationSearchViewModel()
    @StateObject var authViewModel = AuthViewModel  ()
    @StateObject var homeViewModel = HomeViewModel()

  var body: some Scene {
    WindowGroup {
      NavigationView {
          HomeView()
//              .environmentObject(locationViewModel)
              .environmentObject(authViewModel)
              .environmentObject(homeViewModel)
      }
    }
  }
}
