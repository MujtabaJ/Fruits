//
//  OnboardingView.swift
//  Fruits2
//
//  Created by a on 10/14/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTIES
    var fruit: [Fruit] = fruitsData
    
    // MARK: BODY
    var body: some View {
        
        TabView {
            ForEach(fruit) { item in
                FruitCardView(fruit: item)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruit: fruitsData)
    }
}
