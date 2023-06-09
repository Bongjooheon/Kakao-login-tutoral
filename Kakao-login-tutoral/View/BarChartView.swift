import Charts
import SwiftUI

// 밑에서 쭉 설명할 Marks에 대해서도 동일한 Postings 데이터 적용
struct Posting: Identifiable {
    let name: String
    let count: Int
    
    var id: String { name }
}

let postings: [Posting] = [
    .init(name: "월", count: 10),
    .init(name: "화", count: 6),
    .init(name: "수", count: 7),
    .init(name: "목", count: 5),
    .init(name: "금", count: 2),
    .init(name: "토", count: 3),
    .init(name: "일", count: 8)
]

// 차트 그리기
struct BarChartView: View {
    var body: some View {
        VStack{
            Text("이번달 달성율")
                .font(.title3.bold())
                .padding()
                .padding(.top, 30)
            Chart {
                ForEach(postings) { posting in
                    BarMark(
                        x: .value("Name", posting.name),
                        y: .value("Posting", posting.count)
                    )}
            }
            .padding([.top, .bottom], 100)
            .foregroundColor(Color(hex: 0x6A82B8))
        }
    }
}
