import SwiftUI

struct StoryView: View {
    let daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    @State private var selectedDayIndex = 0
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                ScrollViewReader { scrollViewProxy in
                    HStack(spacing: 0) {
                        ForEach(daysOfWeek.indices, id: \.self) { index in
                            VStack {
                                Text(daysOfWeek[index])
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .padding(.top, 10)
                                
                                Text("Calendar")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .padding(.bottom, 10)
                                
                                Spacer()
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .id(index)
                            .onTapGesture {
                                withAnimation {
                                    selectedDayIndex = index
                                    scrollViewProxy.scrollTo(index, anchor: .center)
                                }
                            }
                        }
                    }
                    .onChange(of: selectedDayIndex) { newValue in
                        withAnimation {
                            scrollViewProxy.scrollTo(newValue, anchor: .center)
                        }
                    }
                }
            }
        }
        .padding([.top, .bottom], 50)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
