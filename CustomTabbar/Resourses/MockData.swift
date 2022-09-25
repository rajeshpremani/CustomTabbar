//
//  MockData.swift
//  CustomTabbar
//
//  Created by Rajesh Kumar on 24/09/2022.
//

import Foundation


class MockData{
    static let homeData:[HomeCellDataModel] = [
        HomeCellDataModel(title: "ORDERS", mainImage: "order"),
        HomeCellDataModel(title: "HOW IT WORKS", mainImage: "Workflow", type: .secondary),
        HomeCellDataModel(title: "ABOUT US", mainImage: "ChatIcon"),
        HomeCellDataModel(title: "CONTACT US", mainImage: "contact", type: .secondary)
    ]
}


struct HomeCellDataModel{
    var title:String
    var mainImage:String
    var type:ViewType = .primary
    
    enum ViewType{
        case primary
        case secondary
    }
}
