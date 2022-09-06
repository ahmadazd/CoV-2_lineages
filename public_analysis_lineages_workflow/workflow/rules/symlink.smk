rule symlink:
	input:
                "/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/pango/end_of_pangolin_workflow.txt"
	output:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/pango/symlinked.txt"

	shell:
		"ln -sfn /nfs/production/cochrane/ena/data/covid19/$(ls /nfs/production/cochrane/ena/data/covid19 -rt | tail -n1)  /nfs/production/cochrane/ena/data/covid19/public_consensus_pango_lineages.csv && touch /hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/pango/symlinked.txt"

