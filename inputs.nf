params {
    // specify input bam (or cram) files in tab-delimited input file:
    // 3 columns required: sample, object (path to cram or bam file) and object_index (index .crai or .bai)
    // e.g:
    // sample	object	object_index
    //PD42171b	/lustre/path_to/PD42171b.sample.dupmarked.bam	/lustre/path_to/PD42171b.sample.dupmarked.bam.bai
    tsv_file = "input_bams.tsv"

    // how many samples from input tsv file to process
    // -1 for all samples 
    samples_to_process = -1
    
    ref_dir = "/lustre/scratch118/humgen/resources/ref/Homo_sapiens/HS38DH"
    // path to genome ref file, relative to ref_dir/
    ref_file = "hs38DH.fa"

    bed_dir = "/lustre/scratch118/humgen/resources/exome/Homo_sapiens"
    // path to bed files, relative to bed_dir/
    bed_file_deepvariant = "Twist/Twist_Human_Core_Exome_BI-CTR_padded_merged.bed"
    bed_file_gatk = "Twist/Twist_Human_Core_Exome_BI-CTR_padded_merged.interval_list"
	
    // must be one of
    // "remap_inputs" "sort_inputs" "no_remap_no_sort"
    run_mode = "sort_inputs"

    // which downstream tasks to run:
    run_markDuplicates = true
    run_coord_sort_cram = true
    run_deepvariant = true
    run_haplotypecaller = true

    // how to stage output files from work dir into results dir
    // choose "rellink", "symlink", "move" or "copy" 
    copy_mode = "rellink"
}
