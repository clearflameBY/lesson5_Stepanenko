import UIKit
// MARK: First task
enum Currency: String {
    case USD = "USD"
    case EUR = "EUR"
    case BYN = "BYN"
}


func getExchangeRate(from: Currency, to: Currency) -> Double? {
    let usdToEurRate = 0.92
    let eurToUsdRate = 1.08
    let usdToBynRate: Double? = nil
    let bynToUsdRate = 0.31
    let eurToBynRate = 3.49
    let bynToEurRate = 0.28
    
   if from == Currency.USD && to == Currency.EUR {
        return usdToEurRate
    } else if from == Currency.EUR && to == Currency.USD {
        return usdToBynRate
    } else if from == Currency.USD && to == Currency.BYN {
        return usdToBynRate
    } else if from == Currency.BYN && to == Currency.USD {
        return bynToUsdRate
    } else if from == Currency.EUR && to == Currency.BYN {
        return eurToBynRate
    } else if from == Currency.BYN && to == Currency.EUR {
        return bynToEurRate
    } else {
        return nil
    }
}

//print(getExchangeRate(from: Currency.RawValue("USD"), to: Currency.RawValue("EUR")

func convertCurrency(amount: Double, from: Currency, to: Currency) -> Double? {
    if let data = getExchangeRate(from: from, to: to) {
        let amount1 = getExchangeRate(from: from, to: to)!
        if from == Currency.USD && to == Currency.EUR {
            return amount * amount1
        } else if from == Currency.EUR && to == Currency.USD {
            return amount * amount1
        } else if from == Currency.USD && to == Currency.BYN {
            return amount * amount1
        } else if from == Currency.BYN && to == Currency.USD {
            return amount * amount1
        } else if from == Currency.EUR && to == Currency.BYN {
            return amount * amount1
        } else if from == Currency.BYN && to == Currency.EUR {
            return amount * amount1
        }
    }
    print("Unable to convert. Rate unknown.")
    return nil
}

//print(convertCurrency(amount: 34, from: Currency.USD, to: Currency.BYN))

// MARK: Second task
enum Grade: Int {
    case A = 50
    case B = 40
    case C = 30
    case D = 20
    case F = 10
}
func getLetterGrade(score: Int) -> Grade? {
    switch score {
    case 40...50:
        return Grade.A
    case 30...39:
        return Grade.B
    case 20...29:
        return Grade.C
    case 10...19:
        return Grade.D
    case 0...9:
        return Grade.F
    default:
        return nil
    }
}
func printExamResult(name: String, score: Int) -> String {
    //guard score > 0 && score < 50 else { return "jisjf"}
    if let data = getLetterGrade(score: score) {
        var letterGrade: String = ""
        switch score {
        case 40...50:
            letterGrade = "A"
        case 30...39:
            letterGrade = "B"
        case 20...29:
            letterGrade = "C"
        case 10...19:
            letterGrade = "D"
        case 0...9:
            letterGrade = "F"
        default:
            print("Xcode forced to install default case")
        }
        return name + " received " + letterGrade + ": " + String(score)
        //return name + " received" + stringScore
    }
    return name + " got an invalid grade" + ": " + String(score)
}
print(printExamResult(name: "Alex", score: 23))
print(printExamResult(name: "Ilya", score: -2))

