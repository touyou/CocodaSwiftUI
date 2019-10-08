//
//  ContentView.swift
//  CocodaSwiftUI
//
//  Created by 藤井陽介 on 2019/10/08.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(pages) { page in
                    NavigationLink(destination: page.destination) {
                        Text(page.name).font(.subheadline).padding()
                    }
                }
                }.navigationBarTitle(Text("Cocoda by SwiftUI"), displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
