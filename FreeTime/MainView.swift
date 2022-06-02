//
//  MainView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

// The main view of FreeTime, using nagivation tab view
struct MainView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        // Calls onboarding fullscreen cover on first run
        .fullScreenCover(isPresented: $userData.shouldShowOnboarding, content: {
            OBTabView()
                .environmentObject(userData)
            })
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(UserData())
    }
}
