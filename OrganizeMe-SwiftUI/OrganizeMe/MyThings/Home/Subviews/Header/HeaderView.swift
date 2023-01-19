//
//  HeaderView.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 14/04/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Good Moorning,")
                        .font(.title2)
                    Text("Ester")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                CircleImage()
            }.padding()
        }
    }
}

struct CircleImage: View {
    var body: some View {
        Image(uiImage: UIImage(named: "reminder-icon")!)
            .resizable()
            .clipShape(Circle())
            .shadow(radius: 7)
            .frame(width: 100, height: 100, alignment: .leading)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
