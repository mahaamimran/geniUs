import SwiftUI
// the view
struct HomeView: View {
    var body: some View {
        // the content in the view
        VStack {
            // vertical stacked content
            Text("Welcome to geniUS!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Image(information.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(40)

            Text(information.name)
                .font(.title)
        }
    }
    
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
