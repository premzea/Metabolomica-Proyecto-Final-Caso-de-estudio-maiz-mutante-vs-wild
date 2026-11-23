# PID of current job: 4040761
mSet<-InitDataObjects("conc", "pathora", FALSE, 150)
cmpd.vec<-c("Melibiose","Stachyose","Tartaric acid","3-Hydroxybenzaldehyde","2-Furoic acid","Phenylpyruvic acid","Quinoline","Leucylphenylalanine","4-Trimethylammoniobutanoic acid","Serotonin","Glycylleucine","Ketoleucine","N6-methyladenosine","2-Hydroxy-4-(methylthio)butanoic acid","2-Methylcitric acid","D-Glucosaminic acid","Beta-Alanine","trans-Ferulic acid","2-Hydroxyphenethylamine","Sarcosine","Alanine","N-Acetylaspartic acid","Azelaic acid","gamma-Glutamyl-valine","2-Hydroxycaproic acid","7-methylguanosine","Erythronic acid","Pantothenic acid(VB5)","p-Cresyl sulfate","Arginine","3-Methylhistidine","3-Methyl-2-oxovaleric acid")
mSet<-Setup.MapData(mSet, cmpd.vec);
mSet<-CrossReferencing(mSet, "name");
mSet<-CreateMappingResultTable(mSet)
mSet<-SetKEGG.PathLib(mSet, "zma", "current")
mSet<-SetMetabolomeFilter(mSet, F);
mSet<-CalculateOraScore(mSet, "rbc", "hyperg")
mSet<-PlotPathSummary(mSet, F, "path_view_0_", "png", 150, width=NA, NA, NA )
PlotPathSummary(mSet, FALSE, "path_view_0_", "png", 150)
