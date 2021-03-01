/////////////////////////////////////////////////////////////
//
// OpenDoc.elm
//
// Run automatically at the opening of sphinx doc
//
/////////////////////////////////////////////////////////////

if(el.IsAppWindowless()) then
	exit
endif

// Check that all apptarget filenames are the same

if ad.AppTargetCount()<2 then
	exit
endif

fc = New("File")
at = ad.AppTarget(0)
fn = at.FileName(0)
same = true;

for t=1 to ad.AppTargetCount()-1
	at = ad.AppTarget(t)
	if at.FileName(0) != fn then
		same = false
		break
	endif
next

// Ask the user if he wants to correct non unique filename

if !same then
	if YesNoDlg( "AppTarget Filename Error", "Not all AppTargets in this file have the same output filename, do you want to correct this?" ) == 1 then
		afn = New("Array")
		for t=0 to ad.AppTargetCount()-1
			at = ad.AppTarget(t)
			if afn.Find( at.FileName(0) ) then
				afn.Add( at.FileName(0) )
			endif
		next
		docname = ad.PathName()
		outname = FileTitle(docname)+".edb"
		afn.Add(outname)
		p = New("Picker");
		for t=0 to afn.Size()-1
			p.Add( afn.Get(t) )
		next
		fname = p.Pick("Filename for All AppTargets");
		if fname !=-1 then
			for t=0 to ad.AppTargetCount()-1
				at = ad.AppTarget(t)
				at.SetFileName(0,fname)
			next
		endif
	endif
endif


// Validate Project File

pf = ad.ProjectFile()
pd = ParseStr(pf,"\\",0)
pd = Lower(pd)

if (pd != "serverx") then

	if YesNoDlg( "Project File Error", "Project File pointing to old server, do you want to correct this?" ) == 1 then

		pf = ReplaceStr(pf, pd,"serverx")
		ad.SetProjectFile(pf)

		MessageBox("Project File Reload" , "You Need to Save and Reload ELF for project settings to work.")

	endif
endif


//  *** Copy Ps2 textures size to GC ***
CopyPS2ToGCTextures = 0 ; // copy texture size
//CopyPS2ToGCTextures = 0 ; // dont copy texture size
//NameList = New("Array")
//NameList.Add("Martinha");
//NameList.Add("Test");
//Print(" User Name "+UserName())
//for i=0 to NameList.Size()
//	UName = NameList.Get(i);
//	if (UName == UserName()) then
//		Print(">>>>>>>>>>>>>>>>>> Selected for Teture Macro <<<<<<<<<<<<<<<<<");
//		CopyPS2ToGCTextures  =1; 
//	endif
//next
if (CopyPS2ToGCTextures==1) then
	//Print(" ********************************** ");
	//Print(" ********************************** ");
	Print(" copied texture size from PS2 to GC ");
	// we have the file now
	for i=0 to 20
		for tn=0 to ad.TextureCount()-1
			tex = ad.Texture(tn)

			hgc= tex.OutputHeight(1)
			wgc= tex.OutputWidth(1)

			hps= tex.OutputHeight(2)
			wps= tex.OutputWidth(2)
		
			if (hps<hgc) then
  				hgc = hps	
			endif

			if (wps<wgc) then
  				wgc = wps	
			endif

			tex.SetImageReduction(1,wgc,hgc) // copy ps2 setting to the GC
		next
	next
endif


// X-Box texture sizes updtae
	for i=0 to 20
		for tn=0 to ad.TextureCount()-1
			tex = ad.Texture(tn)

			hxb= tex.OutputHeight(0)
			wxb= tex.OutputWidth(0)

			hps= tex.OutputHeight(2)
			wps= tex.OutputWidth(2)
			
			// only update textures if they are bigger		
			if ( hxb = -1 ) then
  				hxb = hps	
			endif
			if ( hps < hxb  ) then
  				hxb = hps	
			endif

			// only update textures if they are bigger		
			if ( wxb = -1) then
  				wxb = wps	
			endif

			if (wps<wxb) then
  				wxb = wps	
			endif
			// turn off Copy PS2 textures to X-Box
			//tex.SetImageReduction(0,wxb,hxb) // copy ps2 setting to the X-Box
		next
	next



DisplayTexturesSize=0;
DisplayEntitiesCount=0;
DisplayEntitiesTypes=0;
DisplayMapsCount=0;
DisplayAnimationsCount=0;
DisplayScriptsCount=0;
DisplayParticlesCount=0;
DisplaySwooshCount=0;
DisplayAnimModeCount=0;
DisplayAnimSetCount=0;
Print( UserName() );
if (UserName()=="KARLG") then
	DisplayTexturesSize=1;
endif

if (UserName()=="Padraigc") then
	DisplayTexturesSize=1;
endif

// all of the team // 03/09/03

DisplayTexturesSize=1;

if (UserName()=="Martink") then
	DisplayTexturesSize=0;
endif

if (UserName()=="Duncanb") then
	DisplayTexturesSize=0;
endif

if (UserName()=="Darrenw") then
	DisplayTexturesSize=0;
endif

// New Sphinx Team // 25/10/20
if (UserName()=="Jordi Martinez") then
	DisplayTexturesSize=0;
	DisplayEntitiesCount=0;
	DisplayEntitiesTypes=0;
	DisplayMapsCount=0;
	DisplayAnimationsCount0;
	DisplayScriptsCount=0;
	DisplayParticlesCount=0;
	DisplaySwooshCount=0;
	DisplayAnimModeCount=0;
	DisplayAnimSetCount=0;
endif

if (DisplayTexturesSize==1) then 
Print("Display Texture Count (GC) ");
Tx256y256 =0;
Tx128y128 =0;
Tx256y128 =0;
Tx128y256 =0;
Tx64y64 =0;
Tx256y64 =0;
Tx64y256 =0;
TxOver =0;
TCount = 0
for tn=0 to ad.TextureCount()-1
	TCount=TCount+1
	Siz=0;
	tex = ad.Texture(tn)
	h= tex.OutputHeight(1)
	if h == -1 then
		h=tex.Height()
	endif
	w= tex.OutputWidth(1)
	if w == -1 then
		w=tex.Width()
	endif

	if (w==256) then 
		if (h==256) then 
			Siz = 1;
		endif	
	endif
	if (w==128) then
		if (h==128) then
			Siz = 2;
		endif
	endif
	if (w==256) then
		if (h==128) then
			Siz = 3;
		endif
	endif
	if (w==128) then
		if (h==256) then
			Siz = 4;
		endif
	endif
	if (w==64) then
		if (h==64) then
			Siz = 5;
		endif
	endif
	if (w==256) then
		if (h==64) then
			Siz = 6;
		endif
	endif
	if (w==64) then
		if (h==256) then
			Siz = 7;
		endif
	endif
	if (w>256) then
		Siz = 8;
	endif
	if (h>256) then
		Siz = 8;
	endif
	if (Siz==1) then 
		Tx256y256 = Tx256y256+1
	endif
	if (Siz==2) then 
		Tx128y128 = Tx128y128+1
	endif
	if (Siz==3) then 
		Tx256y128 = Tx256y128+1
	endif
	if (Siz==4) then 
		Tx128y256 = Tx128y256+1
	endif
	if (Siz==5) then 
		Tx64y64 = Tx64y64+1
	endif
	if (Siz==6) then 
		Tx256y64 = Tx256y64+1
	endif
	if (Siz==7) then 
		Tx64y256 = Tx64y256+1
	endif
	if (Siz==8) then 
		TxOver = TxOver+1
	endif
	
next 
if (TxOver > 0 ) then
	Print("T  Over 256 =" + TxOver);
endif
if (Tx256y256 > 0 ) then
	 Print("T 256 * 256 =" + Tx256y256);
endif
if (Tx256y128 > 0 ) then
Print("T 256 * 128 =" + Tx256y128);
endif
if (Tx128y256 > 0 ) then
	Print("T 128 * 256 =" + Tx128y256);
endif
if (Tx128y128 > 0 ) then
	Print("T 128 * 128 =" + Tx128y128);
endif
if (Tx256y64 > 0 ) then
	Print("T 256 *  64 =" + Tx256y64);
endif
if (Tx64y256 > 0 ) then
	Print("T  64 * 256 =" + Tx64y256);
endif
if (Tx64y64 > 0 ) then
	Print("T  64 *  64 =" + Tx64y64);
endif
Print("Total Number of Textures  = "+TCount)
// end of display texture size
endif

// Show Number of entities
NumberOfEntities = ad.EntityCount();
if (NumberOfEntities > 0) then
	if (DisplayEntitiesCount==1) then
		Print("Total Number of Entities  = "+NumberOfEntities)
	endif
endif

// Show Number of Entity Types
NumberOfEntityTypes = ad.EntityTypeCount();
if (NumberOfEntityTypes > 0) then
	if (DisplayEntitiesTypes==1) then
		Print("Total Number of Entity Types  = "+NumberOfEntityTypes)
	endif
endif

// Show Number of Maps
NumberOfMaps = ad.MapCount();
if (NumberOfMaps > 0) then
	if (DisplayMapsCount==1) then
		Print("Total Number of Maps  = "+NumberOfMaps)
	endif
endif

// Show Number of Animations
NumberOfAnimations = ad.AnimationCount();
if (NumberOfAnimations > 0) then
	if (DisplayAnimationsCount==1) then
		Print("Total Number of Animations  = "+NumberOfAnimations)
	endif
endif

// Show Number of Scripts
NumberOfScripts = ad.ScriptCount();
if (NumberOfScripts > 0) then
	if (DisplayScriptsCount==1) then
		Print("Total Number of Scripts  = "+NumberOfScripts)
	endif
endif

// Show Number of Particles
NumberOfParticles = ad.ParticleSystemCount();
if (NumberOfParticles > 0) then
	if (DisplayParticlesCount==1) then
		Print("Total Number of Particles  = "+NumberOfParticles)
	endif
endif

// Show Number of Swoosh
NumberOfSwoosh = ad.SwooshCount();
if (NumberOfSwoosh > 0) then
	if (DisplaySwooshCount==1) then
		Print("Total Number of Swoosh  = "+NumberOfSwoosh)
	endif
endif

// Show Number of AnimMode
NumberOfAnimMode = ad.AnimModeCount();
if (NumberOfAnimMode > 0) then
	if (DisplayAnimModeCount==1) then
		Print("Total Number of AnimMode  = "+NumberOfAnimMode)
	endif
endif

// Show Number of AnimSet
NumberOfAnimSet = ad.AnimSetCount();
if (NumberOfAnimSet > 0) then
	if (DisplayAnimSetCount==1) then
		Print("Total Number of AnimSet  = "+NumberOfAnimSet )
	endif
endif

// get user name
UName  = UserName()

// write user name to file
NameList = New("Array")

// Read file and add all users to the NameList Array
ReadFile = fc.Open("x:\ServerX\Sphinx\Project\Macros\Sphinx_UserList.txt","rt")
if (ReadFile) then
	do
		if(fc.EOF())then
			break
		else
			NameList.Add(fc.Read());
		endif
	loop
	fc.Close()
endif

// Check if the current username is in the list
Test = NameList.Find(UName)
if (Test==-1) then
	//Add the user to the list
	Print("User " + UName + " Added to the Users List")
	NameList.Add(UName);
	
	//Write the new list to the file
	WriteFile = fc.Open("x:\ServerX\Sphinx\Project\Macros\Sphinx_UserList.txt","rwt")
	if (WriteFile) then
		for i=0 to NameList.Size()
			fc.Write(NameList.Get(i));
		next
		fc.Close()
	endif
endif

if (DisplayTexturesSize==0) then 
	CloseOutput()
endif
