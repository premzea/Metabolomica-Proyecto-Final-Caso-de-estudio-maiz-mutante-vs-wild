# PID of current job: 4103769
mSet<-InitDataObjects("conc", "msetora", FALSE, 150)
cmpd.vec<-c("Melibiose","Stachyose","Tartaric acid","3-Hydroxybenzaldehyde","2-Furoic acid","Phenylpyruvic acid","Quinoline","Leucylphenylalanine","4-Trimethylammoniobutanoic acid","Serotonin","Glycylleucine","Ketoleucine","N6-methyladenosine","2-Hydroxy-4-(methylthio)butanoic acid","2-Methylcitric acid","D-Glucosaminic acid","Beta-Alanine","trans-Ferulic acid","2-Hydroxyphenethylamine","Sarcosine","Alanine","N-Acetylaspartic acid","Azelaic acid","gamma-Glutamyl-valine","2-Hydroxycaproic acid","7-methylguanosine","Erythronic acid","Pantothenic acid(VB5)","p-Cresyl sulfate","Arginine","3-Methylhistidine","3-Methyl-2-oxovaleric acid")
mSet<-Setup.MapData(mSet, cmpd.vec);
mSet<-CrossReferencing(mSet, "name");
mSet<-CreateMappingResultTable(mSet)
mSet<-SetMetabolomeFilter(mSet, F);
mSet<-SetCurrentMsetLib(mSet, "kegg_pathway", 2);
mSet<-CalculateHyperScore(mSet, "hyperg")
PlotORAMembership(mSet, "mset_membership_0_", "png", 150)
mSet<-PlotORA(mSet, "ora_0_", "net", "png", 150, width=NA)
PlotORA(mSet, "ora_0_", "net", "png", 150)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_0_", "png", 150, width=NA)
PlotEnrichDotPlot(mSet, "ora", "ora_dot_0_", "png", 150)
mSet<-SaveTransformedData(mSet)
PlotEnrichDotPlot(mSet, "ora", "ora_dot_0_", "pdf", 150)
mSet<-PreparePDFReport(mSet, "guest16308819202085743671")

mSet<-SetMetabolomeFilter(mSet, F);
mSet<-SetCurrentMsetLib(mSet, "smpdb_pathway", 2);
mSet<-CalculateHyperScore(mSet, "hyperg")
PlotORAMembership(mSet, "mset_membership_0_", "png", 150)
mSet<-PlotORA(mSet, "ora_1_", "net", "png", 150, width=NA)
PlotORA(mSet, "ora_1_", "net", "png", 150)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_1_", "png", 150, width=NA)
PlotEnrichDotPlot(mSet, "ora", "ora_dot_1_", "png", 150)
