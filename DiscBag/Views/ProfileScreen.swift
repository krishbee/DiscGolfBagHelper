//
//  ContentView.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 28/05/2024.
//

import SwiftUI

struct ProfileScreen: View {
    @EnvironmentObject private var userManager: UserManagerImplementation
    
    var user: User
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                HStack(spacing: 40) {
                    NavigationLink {
                        BagScreen(user: user, discsSelection: .bag)
                    } label: {
                        VStack(spacing: 0) {
                            Image(systemName: "gym.bag")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 120, maxHeight: 120)
                            
                            Text("Bag")
                                .font(.init(.custom(.init(), size: 22)))
                                .padding(.vertical, 12)
                            
                        }
                    }
                    NavigationLink {
                        BagScreen(user: user, discsSelection: .shelf)
                    } label: {
                        VStack(spacing: 0) {
                            Image(systemName: "tablecells")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 120, maxHeight: 120)
                            
                            Text("Shelf")
                                .font(.init(.custom(.init(), size: 22)))
                                .padding(.vertical, 12)
                        }
                    }
                    
                }
                .padding(.vertical, 24)
                Spacer()
                AllDiscsPreviewScene(user: user)
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        UserSettingsScreen()
                    } label: {
                        Text("Settings")
                    }

                }
            }
        }
        
        
    }
}

#Preview {
    ProfileScreen(user: .mock1)
}
