

import SwiftUI

struct ContentView: View {
    //: MARK: PROPERTIES
    var fruit: [Fruit] = fruitsData
    
    @State private var isPresentingSettingsView: Bool = false
    
    //: MARK: BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            } //: LIST
            .navigationBarTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                isPresentingSettingsView = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })
            )
            .sheet(isPresented: $isPresentingSettingsView) {
                SettingsView()
                    .padding(.horizontal, 20)
            }
        } //: NAVIGATIONVIEW
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//: MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
            .previewDevice("iPhone 11")
    }
}
