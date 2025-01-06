//
//  UserService.swift
//  UberSwiftUI
//
//  Created by oguzhan on 30.12.2024.
//

import FirebaseAuth
import FirebaseFirestore

class UserService: ObservableObject {
    static let shared = UserService()
    @Published var user: User?
    
    init() {
        print("DEBUG: Did init user service")
        fetchUser()
    }
    
    func fetchUser() {
        guard let uid = Auth.auth().currentUser?.uid else { return }

        Firestore.firestore().collection("users").document(uid).getDocument { snapshot, _ in
            print("DEBUG: Did fetch user from firestore")
            guard let snapshot = snapshot else { return }
            guard let user = try? snapshot.data(as: User.self) else { return }
            self.user = user
        }
    }
    
//    static func fetchUser(completion: @escaping(User) -> Void) {
//        guard let uid = Auth.auth().currentUser?.uid else { return }
//
//        Firestore.firestore().collection("users").document(uid).getDocument { snapshot, _ in
//            print("DEBUG: Did fetch user from firestore")
//            guard let snapshot = snapshot else { return }
//            guard let user = try? snapshot.data(as: User.self) else { return }
//            completion(user)
//        }
//    }
}
