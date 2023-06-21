import SwiftUI
// the view
struct HomeView: View {
    
    var body: some View {
        // the content in the view
        VStack {
            
            
            // vertical stacked content
            Text("Tasks")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            

           

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
