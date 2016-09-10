
//  Created by Franklin on 2016-09-09.
//  Copyright © 2016 Franklin. All rights reserved.
//

import UIKit

class FirstTableViewViewController: UITableViewController {
    
    var FirstTableArray = [String]()
    
    var SecondArray = [SecondTable]()
    
    var ThirdArray = [ThirdView]()
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        FirstTableArray = ["Elementary School", "Secondary School", "High School"]
        
        SecondArray = [SecondTable(SecondTitle: ["Mississauga", "Toronto", "Brampton"]),
                       SecondTable(SecondTitle: ["Mississauga", "Toronto", "Brampton"]),
                       SecondTable(SecondTitle: ["Mississauga", "Toronto", "Brampton"])]
        
        ThirdArray = [ThirdView(ThirdViewArray: ["There are 20 Elementary schools in Mississauga", "There are 25 Elementary Schools in Toronto", "There are 15 Elementary Schools in Brampton"]),
                      ThirdView(ThirdViewArray: ["There are 25 Secondary schools in Mississauga", "There are 27 Secondary Schools in Toronto", "There are 20 Secondary Schools in Brampton"]),
                      ThirdView(ThirdViewArray: ["There are 15 High schools in Mississauga", "There are 30 High Schools in Toronto", "There are 13 High Schools in Brampton"])]

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return FirstTableArray.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath IndexPath: NSIndexPath) -> UITableViewCell {
        
        let Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: IndexPath) as UITableViewCell
        
        Cell.textLabel?.text = FirstTableArray[IndexPath.row]
        
        return Cell
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let DestViewController = segue.destinationViewController as! SecondTableViewController
        
        var SecondTableArrayTwo: SecondTable
        
        SecondTableArrayTwo = SecondArray[indexPath.row]
        
        DestViewController.SecondArray = SecondTableArrayTwo.SecondTitle
        
        
        var ThirdAnswerArray : ThirdView
        
        ThirdAnswerArray = ThirdArray[indexPath.row]
        
        DestViewController.SecondAnswerAray = ThirdAnswerArray.ThirdViewArray
        
        
        
        
        
        
    }
    
    
}

