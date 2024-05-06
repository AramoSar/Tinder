//
//  CurrentUserProfileView.swift
//  TinderTutorialApp
//
//  Created by Aram on 22.03.24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @State private var showEditProfile = false
    
    let user: User
    
    var body: some View {
        NavigationStack {
            List {
                // header
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture { showEditProfile.toggle() }
                
                // Account info
                Section("Account informatio") {
                    HStack {
                        Text("Name")
                        
                        Spacer()
                        
                        Text("\(user.fullname)")
                    }
                    
                    HStack {
                        Text("Email")
                        
                        Spacer()
                        
                        Text("test@gmail.com")
                    }
                }
                
                // legal
                Section("Legal") {
                    Text("Terms of Service")
                }
                
                // logout/delete
                Section {
                    Button("Logout") {
                        print("DEBUG: Logout here..")
                    }
                }
                .foregroundStyle(.red)
                
                Section {
                    Button("Delet Account") {
                        print("DEBUG: Delete Account here..")
                    }
                }
                .foregroundStyle(.red)
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showEditProfile)  {
                EditProfileView(user: user)
            }
        }
    
    }
}

#Preview {
    UserProfileView(user: MockData.users[1])
}
