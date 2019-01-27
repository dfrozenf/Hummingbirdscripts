library (Rsubread)

counts <- featureCounts( 
files=
		c("~/RNAseq/STARmap/STAR66Aligned.out.bam",
		"~/RNAseq/STARmap/STAR73Aligned.out.bam",
		"~/RNAseq/STARmap/STAR78Aligned.out.bam",
		"~/RNAseq/STARmap/STAR81Aligned.out.bam")
annot.ext="~/Genomes/Celegans/PRJNA13758/c_elegans.PRJNA13758.WS253.canonical_geneset.gtf",
isGTFAnnotationFile=TRUE,
GTF.featureType="exon",
GTF.attrType="gene_id"
)

write(counts, file = "~/RNAseq/featureCounts/counts.txt,
		ncolumns = 10
		sep = "\t")