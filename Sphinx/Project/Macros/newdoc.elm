/////////////////////////////////////////////////////////////
//
// NewDoc.elm
//
// Run automatically at the creation of new sphinx doc
//
/////////////////////////////////////////////////////////////

if(el.IsAppWindowless()) then
	exit
endif

name = Input("Enter name for new Sphinx document (first 8 chars will be used for output filename)")

if(name=="") then name="Unnamed"

dotpos = FindStr(name,".")
if(dotpos>=0)
	name = Left(name,dotpos)
endif

ad.SetName(name)

ad.SetTriggerFile("s:\\sphinx\project\triggers2.txt");

outname = Left(name,8)+".edb"

all = ad.AppTarget("ALL")
if( all==NULL ) then all = ad.NewAppTarget("SPNX","ALL")

pc = ad.AppTarget("PC")
if( pc==NULL ) then pc = ad.NewAppTarget("SPNX","PC")

ps2 = ad.AppTarget("PS2")
if( ps2==NULL ) then ps2 = ad.NewAppTarget("SPNX","PS2")

all.SetFileName(0,outname)
pc.SetFileName(0,outname)
ps2.SetFileName(0,outname)

all.SetDebugOutput(false)
pc.SetDebugOutput(false)
ps2.SetDebugOutput(false)

CloseOutput()
