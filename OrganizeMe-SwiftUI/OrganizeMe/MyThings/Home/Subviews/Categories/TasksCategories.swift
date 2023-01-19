//
//  TasksCategories.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 14/04/22.
//

import SwiftUI

struct TasksCategories: View {
    var categoryName: String

    var body: some View {
        ZStack {
            CategoriesBackground()
                .frame(width: 110, height: 120, alignment: .center)
            VStack {
                Image(uiImage: UIImage(named: "\(categoryName.lowercased())-icon")!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70, alignment: .center)
                Text("\(categoryName)")
            }.scaledToFit()
        }
    }
}

struct CategoriesBackground: View {
    static let gradientStart = Color(#colorLiteral(red: 0.05882352941, green: 0.7607843137, blue: 0.7529411765, alpha: 1))
    static let gradientEnd = Color(#colorLiteral(red: 0, green: 0.5607843137, blue: 0.5490196078, alpha: 1))

    var body: some View {
        GeometryReader { geometry in
            Rectangle()
                .fill(.linearGradient(
                    Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 0.8)
                ))
                .frame(width: geometry.size.width, height: geometry.size.height,alignment: .center)
        }
        .cornerRadius(10)
        .aspectRatio(1, contentMode: .fit)
    }
}

struct TasksCategories_Previews: PreviewProvider {
    static var previews: some View {
        TasksCategories(categoryName: "Task")
            .previewLayout(.fixed(width: 300, height: 200))
    }
}
