//////////////////////////////////////////////////////////////////////////////
//
//	NAME   :	CheckTriggersRefFile.elm
//	AUTHOR :	jmarti856
//	NOTES  :	Shows info about the triggers that uses
//                 the selected external ELF file in the Macros console
//
//////////////////////////////////////////////////////////////////////////////

//Check there are documents loaded
if el.DocCount()==0 then
	abort "No document loaded ?"
endif

//Select a document
if el.DocCount()>1 then
	doc = el.PickDoc("Select an ELF file to start")
	if doc==0 then 
		abort "Cancelled!"
	endif
else 
	// use the only file loaded
	doc = el.Doc(0);
endif

//Check the document has maps
if doc.MapCount()<1 then
	abort "This document has no maps!"
else
	PathToCheckFile = Lower(FileDlg("o", "FileToCheck", "ELF"));
	if PathToCheckFile=="" then
		exit "Cancelled, the input can not be empty!"
	else
		Print("Selected file: "+PathToCheckFile)
		NumberTotalMaps = doc.MapCount()
		Print("Number of maps: "+NumberTotalMaps)

		//Select a map or check all
		if NumberTotalMaps>1 then
			Answer = YesNoDlg("Select a Map", "Do you want to check all maps?");
		else
			Answer = 1
		endif
		
		//Check all maps
		if Answer==0 then
			exit "Cancelled no maps has been selected!"
		endif
		//Check all maps
		if Answer==1 then
			//Access Map Info
			for i=0 to NumberTotalMaps-1
				MapToCheck = doc.Map(i);
				call PrintTriggerInfo
			next
		endif
		
		//Check selected map
		if Answer==2 then
			MapToCheck = doc.PickMap("Select a map to check");
			if MapToCheck=="0x00000000" then
				exit "Cancelled no maps has been selected!"
			else
				call PrintTriggerInfo
			endif
		endif
	endif
endif

sub PrintTriggerInfo
	NumberTotalTriggers = MapToCheck.TriggerCount();
	Print("======================["+MapToCheck.Name()+"]======================");
	Print("Total Number of Triggers = "+NumberTotalTriggers)
	
	TrCountRefFiles = 0
	
	//Access Trigger Info
	for k=0 to NumberTotalTriggers-1
		TriggerInfo = MapToCheck.Trigger(k);
		if TriggerInfo.IsExternalRefScript() then
			if TriggerInfo.GetExternalRefScriptFile()==PathToCheckFile then
				TrCountRefFiles +=1
				Print("");
				Print("Display Name: '"+TriggerInfo.GetDispName()+"'");
				Print("     Script = "+TriggerInfo.GetExternalRefScriptFile());
				TriggerPos = TriggerInfo.GetPosition();
				Print("     Position Coords: ");
				Print("              X="+TriggerPos.X()+" Y="+TriggerPos.Y()+" Z="+TriggerPos.Z());
			endif
		endif
	next
	Print("Total Number of results = "+TrCountRefFiles)
endsub
