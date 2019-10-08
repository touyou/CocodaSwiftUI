//
//  Pages.swift
//  CocodaSwiftUI
//
//  Created by 藤井陽介 on 2019/10/08.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI
import Combine
import UIKit

let pages: [Page] = [
    .init(id: 1, name: "ガイドライン入門１", destinationType: .guidelineIntroFirst)
]

protocol PageModel {
    associatedtype DestinationView: View
    var destination: Self.DestinationView { get }
}

struct Page: PageModel, Identifiable {
    var id: Int
    var name: String
    fileprivate var destinationType: Destination

    var destination: some View {
        switch destinationType {
        case .guidelineIntroFirst:
            return GuidelineIntroductionFirst()
        }
    }
}

fileprivate enum Destination: CaseIterable {
    case guidelineIntroFirst
}
