# WebScrape
A Powershell script for scraping documents off of websites where documents are identified by an id value as part of a query string.

## Getting Started
Getting started is as easy as copying the PowerShell script into a local PowerShell ISE and executing the script with the appropriate presistence destination and URL updated in the script. 

### Prerequisites
In order to run this application you will need to have a Windows PC with Windows PowerShell installed. 
Windows PowerShell v3.0 was used during testing.

## Running the tests
Copy the contents of the `Download_File_From_Web_In_A_Loop.ps1` script. 
Change the varialbe `LocalPathToSaveFilesTo` to point to a valid & existing directory where the documents the script identifies can be presisted.
Change the `BaseURL` script to point to a site where documents are stored and can be identified/viewed by changing the id value of the URL query string.

## Authors

* **Adam Baker** - *Initial work* - [Adam Baker](https://github.com/abaker86)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
