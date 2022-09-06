rule fetch_public_fasta:
	input:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/run_public_pangolin.txt"
	output:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/public_consensus/end.txt"

	resources:
                mem_mb = 2048

	shell:
		 "python3 /hps/software/users/cochrane/ena/azyoud/lineages/public_analysis_lineages_workflow/workflow/scripts/public_consensus_fetch.py -o /hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/public_consensus"
