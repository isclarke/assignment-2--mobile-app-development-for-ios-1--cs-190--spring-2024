struct MyDiamondGenerator {
    func generateTo(diamond: Int) -> String {
        var diamondPattern = ""
        let diamondSize: Int = diamond
        let evenNumber = diamondSize % 2 == 0
        if evenNumber {
            for i in 0..<diamondSize - diamondSize + 1 {
                let spaceCount: Int = diamondSize / 2 - i
                let pointStar: Int = 1

                for _ in 1..<spaceCount {
                    diamondPattern += " "
                }

                for _ in 0..<pointStar {
                    diamondPattern += "  ."
                }

                diamondPattern += "\n"
            }

            for i in 1..<diamondSize / 2 + 1 {
                let spaceCount: Int = diamondSize / 2 - i
                let starCount: Int = 2 * (i + 1) - 2

                for _ in 0..<spaceCount {
                    diamondPattern += " "
                }

                for _ in 0..<starCount {
                    diamondPattern += "  ."
                }

                diamondPattern += "\n"
            }

            for i in 0..<diamondSize / 2 - 1 {
                let spaceCount: Int = i + 1
                let starCount: Int = diamondSize - 2 * (i + 1)

                for _ in 0..<spaceCount {
                    diamondPattern += " "
                }

                for _ in 0..<starCount {
                    diamondPattern += "  ."
                }

                diamondPattern += "\n"
            }

            for i in 0..<diamondSize - diamondSize + 1 {
                let spaceCount: Int = diamondSize / 2 - i
                let topStar: Int = 1

                for _ in 1..<spaceCount {
                    diamondPattern += " "
                }

                for _ in 0..<topStar {
                    diamondPattern += "  ."
                }

                diamondPattern += "\n"
            }
        } else {
            for i in 0..<diamondSize / 2 + 1 {
                let spaceCount: Int = diamondSize / 2 - i
                let starCount: Int = 2 * i + 1

                for _ in 0..<spaceCount {
                    diamondPattern += " "
                }

                for _ in 0..<starCount {
                    diamondPattern += "."
                }

                diamondPattern += "\n"
            }

            for i in 0..<diamondSize / 2 {
                let spaceCount: Int = i + 1
                let starCount: Int = diamondSize - 2 * (i + 1)

                for _ in 0..<spaceCount {
                    diamondPattern += " "
                }

                for _ in 0..<starCount {
                    diamondPattern += "."
                }

                diamondPattern += "\n"
            }
        }
        
        return diamondPattern
    }
}
