#リロード時にExitを生成(セット)

#function pvpsigen_exit:tpam_e_buckupreset
function pvpsigen_exit:tpam_e_summon
schedule function pvpsigen_exit:tpam_e_randomtp 20t replace
schedule function pvpsigen_exit:tpam_e_set 30t replace
function pvpsigen_exit:schedule