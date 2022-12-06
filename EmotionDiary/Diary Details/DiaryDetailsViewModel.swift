//
//  DiaryDetailsViewModel.swift
//  EmotionDiary
//
//  Created by 조상우 on 2022/12/06.
//

//import Foundation
//import SwiftUI
//
//final class DiaryDetailsViewModel: ObservedObject {
//    @Published var diaries: Binding<[MoodDiary]>
//    @Published var diary: MoodDiary
//
//    init(diaries: Binding<[MoodDiary]>, diary: MoodDiary) {
//        self.diaries = diaries
//        self.diary = diary
//    }
//
//    func delete() {
//        diaries.wrappedValue = diaries.wrappedValue.filter { $0.id != diary.id }
//    }
//}

import Foundation
import SwiftUI


final class DiaryDetailsViewModel: ObservableObject {
    @Published var diaries: Binding<[MoodDiary]>
    @Published var diary: MoodDiary
    
    init(diaries: Binding<[MoodDiary]>, diary: MoodDiary) {
        self.diaries = diaries
        self.diary = diary
    }
    
    func delete() {
        diaries.wrappedValue = diaries.wrappedValue.filter { $0.id != diary.id }
    }
}
