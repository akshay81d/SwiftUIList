//
//  MonumentDetail.swift
//  SwiftUIList
//
//  Created by Akshay Dochania on 09/05/20.
//  Copyright © 2020 app-developerz. All rights reserved.
//

import SwiftUI

struct MonumentDetail: View {
    let  monument: Monument
    @State private var zoomedIn = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                Image(self.monument.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: zoomedIn ? .fill: .fit)
                    .onTapGesture {
                        self.zoomedIn.toggle()
                }
                Text(monument.name)
                    .font(.title)
                Text(String(format: "(%.0f)", monument.year))
                Spacer()
            }
            .navigationBarTitle(Text(monument.name), displayMode: .inline)
        }
    }
}

struct MonumentDetail_Previews: PreviewProvider {
    static var previews: some View {
        MonumentDetail(monument: Monument(name: "Taj", imageURL: "Taj", year: 1999))
    }
}
