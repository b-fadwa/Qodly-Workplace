//%attributes = {}


var $fakeData : cs:C1710.FakeData:=cs:C1710.FakeData.new()
$fakeData.dropData()
$fakeData.generateData()
ALERT:C41("Data generated")
