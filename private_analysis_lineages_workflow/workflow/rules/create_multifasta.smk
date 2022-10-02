rule create_multifasta:
	input:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/private_consensus/end.txt"
	output:
		expand("/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/private_multifasta/multifasta_{n}.fasta", n=range(1,config["chunks"]+1))
	params:
		num = str(config["chunks"])
	shell:
		"python /hps/software/users/cochrane/ena/azyoud/lineages/private_analysis_lineages_workflow/workflow/scripts/create_multifasta.py -f /hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/private_consensus -num {params.num} -o /hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/private_multifasta"
