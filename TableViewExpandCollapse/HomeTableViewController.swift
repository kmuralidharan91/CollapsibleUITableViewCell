import UIKit

final class HomeTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(CustomTableViewCell.self,
                                forCellReuseIdentifier: "CustomTableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Constants.fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: "CustomTableViewCell") as? CustomTableViewCell
        else { return UITableViewCell() }
        cell.setUI(with: indexPath.row)
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.3) {
            self.tableView.performBatchUpdates(nil)
        }
    }
    
    
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = self.tableView.cellForRow(at: indexPath) as? CustomTableViewCell {
            cell.hideDetailView()
        }
    }
    
    
}

enum Constants {
    static let fruits = ["apple", "avacoda", "cherry", "coconut", "dragon" ,"grapes",
                         "guava", "kiwi", "melom", "orange", "peach", "salak", "straw"]
}
