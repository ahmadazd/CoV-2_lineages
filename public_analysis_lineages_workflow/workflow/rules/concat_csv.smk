rule concat_csv:
	input:
		expand("/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/pango/pango_lineages.{n}.csv", n=range(1,config["chunks"]+1))
	output:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/pango/end_of_pangolin_workflow.txt"
	
	resources:
                mem_mb = 2048

	shell:
		"python /hps/software/users/cochrane/ena/azyoud/lineages/public_analysis_lineages_workflow/workflow/scripts/public_concatenate_pangolin.py -f /hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/pango -o /nfs/production/cochrane/ena/data/covid19"
