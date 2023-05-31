//
//  ContentView.swift
//  EmojiApp
//
//  Created by Benjamin Wolff on 5/31/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😈,😎,🤨,😁
}

struct ContentView: View {
    @State var selection: Emoji = .😈;
    var body: some View {
        NavigationView {
            VStack {
                Text("Pick an emoji for your mood:")
                    .font(.system(size: 35))
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) {
                        emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Vibes")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
