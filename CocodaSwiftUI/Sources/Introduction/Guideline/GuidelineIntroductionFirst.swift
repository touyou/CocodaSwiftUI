//
//  GuidelineIntroductionFirst.swift
//  CocodaSwiftUI
//
//  Created by 藤井陽介 on 2019/10/08.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct GuidelineIntroductionFirst: View {
    private let items: [Item] = [
        Item(id: 1, title: "プレイリストタイトル", date: "一日前"),
        Item(id: 2, title: "プレイリストタイトル", date: "一日前"),
        Item(id: 3, title: "プレイリストタイトル", date: "一日前"),
        Item(id: 4, title: "プレイリストタイトル", date: "一日前"),
        Item(id: 5, title: "プレイリストタイトル", date: "一日前"),
        Item(id: 6, title: "プレイリストタイトル", date: "一日前"),
        Item(id: 7, title: "プレイリストタイトル", date: "一日前"),
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(0 ..< items.count / 2) { _ in
                        HStack {
                            ForEach(0..<2) { _ in
                                VStack {
                                    Image("guideline_image_1")
                                        .resizable()
                                        .aspectRatio(CGSize(width: 1, height: 1), contentMode: .fill)
                                    Text("プレイリストタイトル")
                                    Text("一日前")
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 20)
            }
            .navigationBarTitle("マイページ")
            .navigationBarItems(trailing: Button(action: {}) {
                Image(systemName: "magnifyingglass")
            })
        }

    }
}

struct GuidelineIntroductionFirst_Previews: PreviewProvider {
    static var previews: some View {
        GuidelineIntroductionFirst()
    }
}

fileprivate struct Item: Identifiable {
    var id: Int
    var title: String
    var date: String
}
