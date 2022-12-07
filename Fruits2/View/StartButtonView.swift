//
//  StartButtonView.swift
//  Fruits2
//
//  Created by a on 10/14/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack {
                Text("Start")
                    
            
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        })
            .accentColor(Color.white)
    }
}

//MARK: PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
