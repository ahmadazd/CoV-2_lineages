rule concat_csv:
	input:
		expand("/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/pango/pango_lineages.{n}.csv", n=range(1,config["chunks"]+1))
	output:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/pango_lineages.csv"
	params:
                host=''
		portal=
		serviceName=''

	shell:
		"python /hps/software/users/cochrane/ena/azyoud/lineages/private_analysis_lineages_workflow/workflow/scripts/concatenate_pangolin.py -h {params.host} -p {params.portal} -s {params.serviceName} -f /hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/pango -o {output}"
