//
//  CSMyTableViewController.m
//  114 UITableViewController Challenge Solution
//
//  Created by IPhone & IPad Developer on 7/15/14.
//  Copyright (c) 2014 IPhone & IPad Developer. All rights reserved.
//

#import "CSMyTableViewController.h"

@interface CSMyTableViewController ()

@end

@implementation CSMyTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Display 3 sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    // If section is equal to section-zero, then display two rows.
    if (section == 0) {
        return 2;
    }
    // Else if section is equal to section-one, then display one rows.
    else if (section == 1) {
        return 1;
    }
    // Else, if section is equal to section-two, then display three rows.
    else {
        return 3;
        }
        
    }




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    We are updating the TableView CellIdentifier with "Cell".. This must match the CellIdentifier in the storyboard's (Table View Cell) 'Identifier' drop down box.)
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath:indexPath ];
    

    
   // If indexPath.section is equal to section zero, then set the cell's text label, by asigning it the string; "I am section", and also print the Cell's position label and row number. Also change the background color of the section to Red.
    
    if (indexPath.section == 0)
    {
        cell.textLabel.text = @"I am in section 0";
        cell.backgroundColor = [UIColor redColor];
    }
    
    
//    Else if the indexPath.section is equal to section one, then asign the cells text label the string; "another section", and also change the background color of the section to Blue.
    else if (indexPath.section == 1)
    {
        cell.textLabel.text = @"another section";
//        cell.textLabel.text = [NSString stringWithFormat:@"another section", indexPath.row];
        cell.backgroundColor = [UIColor blueColor];
    }
    
//    If indexPath.section is equal to section zero, then assign the cells' text label the  string; "I am section", and also print the Cell's position label and row number. Also change the background color of the section to Red.
    else {
        cell.textLabel.text = [NSString stringWithFormat:@"Cell %i", indexPath.row];
        cell.backgroundColor = [UIColor yellowColor];
    }
    
    return cell;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
