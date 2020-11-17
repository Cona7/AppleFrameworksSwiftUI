import SwiftUI

struct ButtonTextView: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct ButtonTextView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTextView(title: "Text Title")
    }
}
