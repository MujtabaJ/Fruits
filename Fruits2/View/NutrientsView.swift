
import SwiftUI

struct NutrientsView: View {
    // MARK: PROPERTIES
    var fruits: Fruit
    var nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    // MARK: BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruits.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruits.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } //: HSTACK
                } //: FOR
            } //: DIS
        } //: BOX
    }
}

// MARK: PREVIEW
struct NutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsView(fruits: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
