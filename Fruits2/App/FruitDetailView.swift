

import SwiftUI

struct FruitDetailView: View {
    // MARK: PROPERTIES
    var fruit: Fruit
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //: HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //: TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //: HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //: NUTRITIUS
                        NutrientsView(fruits: fruit)
                        
                        //: SUB HEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                        //: DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //: LINK
                        SourceLinkView()
                            .padding()
                    } //: VStack
                    .padding(.horizontal, 25)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: ScrollView
            .edgesIgnoringSafeArea(.top)
        } //: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPod touch (7th generation)")
    }
}
