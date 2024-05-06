//
//  ProfileImageGridView.swift
//  TinderTutorialApp
//
//  Created by Aram on 22.03.24.
//

import SwiftUI

struct ProfileImageGridView: View {
    let user: User
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 16  ) {
            ForEach(0 ..< 6) { index in
                if index < user.ProfileImageURLs.count {
                    Image(user.ProfileImageURLs[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageWidth, height: imageHeight)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } else {
                    ZStack(alignment: .bottomTrailing) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(.secondarySystemBackground))
                            .frame(width: imageWidth, height: imageHeight)
                        
                        Image(systemName: "plus.circle.fill")
                            .imageScale(.large)
                            .foregroundStyle(Color(.systemPink))
                            .offset(x: 4, y: 4)
                    }
                }
            }
        }
    }
}

private extension ProfileImageGridView {
    var columns: [GridItem] {
        [
        .init(.flexible()),
        .init(.flexible()),
        .init(.flexible())
        ]
    }
    
    var imageWidth: CGFloat {
        110
    }
    
    var imageHeight: CGFloat {
        160
    }
}

#Preview {
    ProfileImageGridView(
        user: MockData.users[1]
    )
}
