//
//  ContentView.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 14/04/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HeaderView()
            TaskCategoriesRow(categories: Array(categories.prefix(4)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
