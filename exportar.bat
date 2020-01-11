REM *===============================================================================================
REM *	Variables
REM *===============================================================================================
SET TriggerObjects=C:\Users\Jordi Martinez\Desktop\Sphinx and the shadow of set\TriggerObjects
SET Maps=C:\Users\Jordi Martinez\Desktop\Sphinx and the shadow of set\Maps
SET CutScenes=C:\Users\Jordi Martinez\Desktop\Sphinx and the shadow of set\CutScenes
SET NPCs=C:\Users\Jordi Martinez\Desktop\Sphinx and the shadow of set\Maps\NPCs

REM *===============================================================================================
REM *	Change Route
REM *===============================================================================================
X:
cd EngineX\utils

REM *===============================================================================================
REM *	Misc Files
REM *===============================================================================================
REM MISC FILES
EuroLandReduxFixed.exe /o ALL "%Maps%\Misc\Text.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Misc\OO_Trial.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Misc\OO_PickU.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Misc\OO_LevelData.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Misc\oo_InventoryItems.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Misc\Old hud\OO_Icons1.ELF"

REM *===============================================================================================
REM *	Trigger Objects
REM *===============================================================================================
REM Abydos
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Abydos\IO_ab_cana.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Abydos\IO_ab_cncl.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Abydos\IO_ab_nrth.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Abydos\IO_ab_sth.elf"

REM Akaria
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Akaria\IO_ak_01.elf" 
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Akaria\IO_ak_02.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Akaria\IO_ak_03.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Akaria\IO_ak_du1.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Akaria\IO_ak_du2.elf" 
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Akaria\IO_ak_du3.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Akaria\IO_ak_du5.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Akaria\IO_ak_du6.elf"

REM Heliopolis
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Heliopolis\IO_hel_cv1.elf" 
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Heliopolis\IO_hel_da1.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Heliopolis\IO_hel_da2.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Heliopolis\IO_hel_da3.elf"

REM Mummy
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Mummy\IO_mum_gebq.elf" 
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Mummy\IO_mum_inch.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Mummy\IO_mum_jail.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Mummy\IO_mum_well.elf"

REM Sakkara
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Sakkara\IO_sk_01.elf" 
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Sakkara\IO_sk_02.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Sakkara\IO_sk_03.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Sakkara\IO_sk_04.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Sakkara\IO_sk_05.elf" 
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Sakkara\IO_sk_06.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Sakkara\IO_sk_07.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Sakkara\IO_sk_08.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Sakkara\IO_sk_env.elf"

REM Uruk
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Uruk\IO_urk_2key.elf" 
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Uruk\IO_urk_3bms.elf"
EuroLandReduxFixed.exe /o ALL "%TriggerObjects%\Uruk\IO_urk_hub.elf"

REM *===============================================================================================
REM *	Maps
REM *===============================================================================================
REM Abydos
EuroLandReduxFixed.exe /o ALL "%Maps%\Abydos\retouch\_ab_cana.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Abydos\retouch\_ab_cncl.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Abydos\retouch\_ab_nrth.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Abydos\retouch\_ab_sewr.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Abydos\retouch\_ab_sth.elf"

REM Akaria
EuroLandReduxFixed.exe /o ALL "%Maps%\Akarian\retouch\_ak_1.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Akarian\retouch\_ak_2.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Akarian\retouch\_ak_3.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Akarian\retouch\_ak_du1.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Akarian\retouch\_ak_du2.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Akarian\retouch\_ak_du3.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Akarian\retouch\_ak_du5.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Akarian\retouch\_ak_du6.elf"

REM Heliopolis
EuroLandReduxFixed.exe /o ALL "%Maps%\Heliopolis\retouch\_hl_cp.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Heliopolis\retouch\_hl_da1.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Heliopolis\retouch\_hl_da2.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Heliopolis\retouch\_hl_da3.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Heliopolis\retouch\_hl_ext.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Heliopolis\retouch\_hl_ws1.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Heliopolis\retouch\hel_cv1.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Heliopolis\retouch\hel_cv2.elf"

REM Luxor
EuroLandReduxFixed.exe /o ALL "%Maps%\Luxor\retouch\_lu_pyra.elf"

REM Mummy
EuroLandReduxFixed.exe /o ALL "%Maps%\MummyFinal\_mu_cast.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\MummyFinal\_mu_roto.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\MummyFinal\_mu_trei.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\MummyFinal\mum_inch.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\MummyFinal\mum_jail.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\MummyFinal\mum_ldge.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\MummyFinal\mum_well.elf"

REM Sakkara
EuroLandReduxFixed.exe /o ALL "%Maps%\Sakkara\retouch\_sk_01.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Sakkara\retouch\_sk_02.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Sakkara\retouch\_sk_03.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Sakkara\retouch\_sk_05.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Sakkara\retouch\_sk_06.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Sakkara\retouch\_sk_07.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Sakkara\retouch\_sk_08.elf"

REM Uruk
EuroLandReduxFixed.exe /o ALL "%Maps%\Uruk\_ur_2key.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Uruk\_ur_3bms.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Uruk\_ur_hub.elf"
EuroLandReduxFixed.exe /o ALL "%Maps%\Uruk\Urk_4pat.elf"

REM *===============================================================================================
REM *	Cut Scenes
REM *===============================================================================================
REM Abydos
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Abydos\CS_Aby_Council.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Abydos\CS_Aby_South.elf"

REM Akaria
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Akaria\CS_aka_1.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Akaria\CS_aka_2.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Akaria\CS_aka_3.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Akaria\CS_Aka_dng1a.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Akaria\CS_Aka_dng2.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Akaria\CS_Aka_dng4.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Akaria\CS_Aka_dng6.elf"

REM Heliopolis
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Helipolis\CS_Hel_cp.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Helipolis\CS_Hel_da2.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Helipolis\CS_Hel_da3.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Helipolis\CS_Hel_dng.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Helipolis\CS_Hel_ext.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Helipolis\CS_Hel_ws1.elf"

REM Mummy
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Mummy\CS_Mum_ldge.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Mummy\CS_Mum_Roto.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Mummy\CS_Mum_wel.elf"

REM Sakkara
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Sakkara\CS_Sakk_1.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Sakkara\CS_Sakk_2.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Sakkara\CS_Sakk_3.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Sakkara\CS_Sakk_4.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Sakkara\CS_Sakk_5.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Sakkara\CS_Sakk_6.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Sakkara\CS_Sakk_8.elf"

REM Uruk
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Uruk\CS_Urk_2key.elf"
EuroLandReduxFixed.exe /o ALL "%CutScenes%\Uruk\CS_Urk_3bms.elf"

REM *===============================================================================================
REM *	NPCs
REM *===============================================================================================
EuroLandReduxFixed.exe /o ALL "%NPCs%\BR04_Goofy lizard.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\hd01_crocotail.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\HD06_Wolf_Big-headed.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\hd13_s02_aby_bourgeoisie_racist.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\hd16_birdman.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\hd28_v01_aby_posh_couple_man.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\hd29_v01_aby_posh_couple_woman.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\hd31_v01_aby_woman_gossiping.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\HD34_Aby_Fat_Asking_for_a_Cake.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\hd35_aby_athletic_thin.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\hd39_aka_king.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\hd40_iska_palace.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\hd42_aka_worshipper.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\HD69_Hel_Chieftain_Nomad.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\HD71_Hel_Chanting_Nomad_2.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\HD73_Hel_Nomad_Healer(Dark).elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\pi05_aka_turtle.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\QR02_Sak_Spitting_Toad.elf"
EuroLandReduxFixed.exe /o ALL "%NPCs%\QU11_Sarcophguy_Knight.elf"

REM *===============================================================================================
REM *	File List
REM *===============================================================================================
x:\EngineX\Utils\Batch\MkFileList.bat Sphinx PC
x:\EngineX\Utils\Batch\MkFileList2.bat Sphinx PC