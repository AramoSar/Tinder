//
//  UserMatchView.swift
//  TinderTutorialApp
//
//  Created by Aram on 22.03.24.
//

import SwiftUI

struct UserMatchView: View {
    @Binding var show: Bool
    @EnvironmentObject var matchManager: MatchManager
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black.opacity(0.7))
                .ignoresSafeArea()
            
            VStack(spacing: 120) {
                VStack {
                    Image(.itsamatch)
                        .resizable()
                        .frame(width: 300, height: 150)
                    
                    if let matchedUser = matchManager.matchedUser {
                        Text("You and \(matchedUser.fullname) have liked each other.")
                            .foregroundStyle(.white)
                    }
                    
                    
                    
                    HStack(spacing: 16) {
                        Image(MockData.users[0].ProfileImageURLs[0])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .overlay {
                                Circle()
                                    .stroke(.white, lineWidth: 2 )
                                    .shadow(radius: 4  )
                            }
                        
                        if let matchedUser = matchManager.matchedUser {
                            Image(matchedUser.ProfileImageURLs[0])
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .overlay {
                                    Circle()
                                        .stroke(.white, lineWidth: 2 )
                                        .shadow(radius: 4  )
                                }
                        }
                        
                    }
                    .padding(88)
                    
                    VStack(spacing: 16) {
                        Button("Send Message") {
                            show.toggle()
                        }
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 350, height: 44)
                        .background(.pink)
                        .clipShape(Capsule())
                        
                        Button("Keep Swiping") {
                            show.toggle()
                        }
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 350, height: 44)
                        .background(.clear)
                        .clipShape(Capsule())
                        .overlay {
                            Capsule()
                                .stroke(.white, lineWidth: 1)
                                .shadow(radius: 4)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    UserMatchView(show: .constant(true))
        .environmentObject(MatchManager())
    
}
