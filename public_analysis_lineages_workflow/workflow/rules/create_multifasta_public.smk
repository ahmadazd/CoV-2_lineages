rule create_multifasta_public:
	input:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/public_consensus/end.txt"
	output:
		expand("/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/public_multifasta/multifasta_{n}.fasta", n=range(1,config["chunks"]+1))
	params:
		num = str(config["chunks"])
	resources:
                mem_mb = 2048
	shell:
		"python /hps/software/users/cochrane/ena/azyoud/lineages/public_analysis_lineages_workflow/workflow/scripts/create_multifasta_public.py -f /hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/public_consensus -num {params.num} -o /hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/public_multifasta"
