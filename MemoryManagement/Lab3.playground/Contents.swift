import UIKit

class Person {

    var name: String
    var surname: String
    var age: Int

    var messages = [String]()

    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }

    public func showMessages() {
        if messages.count > 0 {
            print("Сообщения \(self.name)")
            for (index, message) in messages.enumerated() {
              print("Message \(index): \(message)")
            }
        } else {
            print("Сообщений нет")
        }
    }

 }

class Company {
    var company_name: String
    var ceo: CEO?

    init (company_name: String) {
        self.company_name = company_name
    }

    public func printCompanyInfo() {
        print("Company name: \(company_name)")

        if let _ceo = ceo {
            print("CEO: \(_ceo.name) \(_ceo.surname)")
            if let _manager = _ceo.product_manager {
                _ceo.printProductManager(_manager)
                _manager.printDevelopers()

            } else {
                print("Product manager None")
                print("Developers None")
            }
        } else {
            print("CEO: None")

        }
    }
}

class CEO: Person {

    var product_manager: ProductManage?

    var printProductManager = {
        (product_manager: ProductManage?) in
        if let pm_name = product_manager?.name, let pm_surname = product_manager?.surname {
            print("Product manager: \(pm_name) \(pm_surname)")
        } else {
            print("Product manager: None")
        }
    }

    var sayPrintDevelopers = {
        (product_manager: ProductManage?) in
        if let _product_manager = product_manager {
            _product_manager.printDevelopers()
        } else {
            print("CEO: -> нет product manager")
        }
    }

    var sayPrintCompanyInfo = {
        (product_manager: ProductManage?) in
        if let _product_manager = product_manager {
            _product_manager.callCompanyInfo()
        } else {
            print("CEO: -> нет product manager")
        }
    }

    deinit {
        print("CEO: \(self.name) \(self.surname) был уничтожен")
    }
}


class ProductManage: Person {
    weak var company: Company?
    weak var ceo: CEO?
    var developers = [Developer?]()

    func printDevelopers() {
        for elem in developers {
            if let developer = elem {
                print("Developer: \(developer.name) \(developer.surname)", terminator: "\n")
            } else {
                print("Developer: None", terminator: "\n")
            }
        }
    }

    func callCompanyInfo() {
        if let _company = company {
            _company.printCompanyInfo()
        } else {
            print("Company: None")
        }
    }


    deinit {
        print("ProductManage: \(self.name) \(self.surname) был уничтожен")
    }
}

class Developer: Person {

    weak var manager: ProductManage?

    public func sendMessage(message: String, person: Person?) {
        if let _person = person {
            _person.messages.append("\(self.name): \(message)")
        } else {
            print("Person: None")
        }
    }

    deinit {
        print("Developer: \(self.name) \(self.surname) был уничтожен")
    }
}

var company: Company? = Company(company_name: "Amazon")
var ceo: CEO? = CEO(name: "Alexey", surname: "Alexeev", age: 35)
var manager: ProductManage? = ProductManage(name: "Anatoliy", surname: "Anatoliev", age: 30)
var dev1: Developer? = Developer(name: "Denis", surname: "Denisov", age: 25)
var dev2: Developer? = Developer(name: "Alik", surname: "Aliev", age: 24)

company?.ceo = ceo
ceo?.product_manager = manager
manager?.ceo = ceo
manager?.company = company
manager?.developers.append(dev1)
manager?.developers.append(dev2)

print("----------------------------------- Задание 3 и 4 -----------------------------------")
ceo?.printProductManager(ceo?.product_manager)
ceo?.sayPrintDevelopers(ceo?.product_manager)
ceo?.sayPrintCompanyInfo(ceo?.product_manager)

print("----------------------------------- Задание 5 ----------------------------------------")
dev2?.sendMessage(message: "Привет разработчик 1", person: dev1)
dev2?.sendMessage(message: "Как дела разработчик 1", person: dev1)
dev1?.sendMessage(message: "Повысьте зарплату!", person: ceo)
dev2?.sendMessage(message: "Дайте проекты!", person: manager)


ceo?.showMessages()
manager?.showMessages()
dev1?.showMessages()
dev2?.showMessages()

print("-------------------------------- Задание 2, 6, 7, 8 ----------------------------------")
dev1 = nil
dev2 = nil
manager = nil
ceo = nil
company = nil
