
<#
  Starting ID Value
  Ending ID Value
  
  Note: Begin by setting the startingID and EndingID values. 
  Not all scenarios have been tested.
  Video files will take longer to download. 
  Files will not have source names but have a Guid and appropriate file extension.
  If one file fails the script should continue
#>
$StartingID = 1
$EndingID = 100

$LocalPathToSaveFilesTo = "C:\Users\..."

$BaseURL = "http://www.sitename.com?id="
$BaseURLMessag ="id="


Write-Output = "Getting Files From ($BaseURL)"

For ($i=$StartingID; $i -le $EndingID; $i++) 
{
<#
   Use the loop to increment the id value in the URL and set the new URL string to the variable $fileToDownload
#>
    $fileToDownload = $BaseURL+$i.tostring().PadLeft(4,'0')
    $message = $BaseURLMessage+$i.tostring().PadLeft(4,'0')
    Write-Output $message

	$WebResponse = Invoke-WebRequest $fileToDownload
	
    $currentFileName = $WebResponse.Headers.Item("X-SP-Origin-Key").Substring(45,$WebResponse.Headers.Item("X-SP-Origin-Key").Length-45)
    $fileNameToDownload = ($i.tostring().PadLeft(4,'0'))+"_id_"+($currentFileName)
    Write-Output $fileNameToDownload

    (New-Object System.Net.WebClient).DownloadFile($fileToDownload,$LocalPathToSaveFilesTo+$fileNameToDownload)
}
    


