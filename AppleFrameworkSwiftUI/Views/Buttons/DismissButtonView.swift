import SwiftUI

struct DismissButtonView: View {
    @Binding var isShowingDetailsView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetailsView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct DissmissButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DismissButtonView(isShowingDetailsView: .constant(true))
    }
}
