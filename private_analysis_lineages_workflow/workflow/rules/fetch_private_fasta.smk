rule fetch_private_fasta:
	input:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/run_pangolin.txt"
	output:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/private_consensus/end.txt"

	resources:
                mem_mb = 2048

	shell:
		 "python3 /hps/software/users/cochrane/ena/azyoud/lineages/private_analysis_lineages_workflow/workflow/scripts/private_fasta_fetching.py -o /hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/private_consensus"
