//
//  OBSleepView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBSleepView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("To begin")
                .navigationTitle("Sleep")
                .navigationBarTitleDisplayMode(.large)
            Spacer()
            Button(action: {}) {
                NavigationLink(destination: OBWorkView()) {
                    Text("Next")
                        .frame(width: 300, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding()
        }
    }
}

struct OBSleepView_Previews: PreviewProvider {
    static var previews: some View {
        OBSleepView()
    }
}
