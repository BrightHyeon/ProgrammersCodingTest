func solution(_ skill: String, _ skill_trees: [String]) -> Int {
    var answer = skill_trees.count
    for i in skill_trees {
        var nowSkill: [Character] = []
        for j in i {
            if skill.contains(j) {
                nowSkill.append(j)
                if Array(skill).firstIndex(of: j)! != nowSkill.count - 1 {
                    answer -= 1
                    break
                }
            }
        }
    }
    return answer
}