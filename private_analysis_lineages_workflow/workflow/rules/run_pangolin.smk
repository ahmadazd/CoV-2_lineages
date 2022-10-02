rule run_pangolin:
	input:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/private_multifasta/multifasta_{n}.fasta"
	output:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/pango/pango_lineages.{n}.csv"
	threads: 4
	resources:
		mem_mb = 2048
	shell:
		"pangolin --threads {threads} --outfile {output} {input}"
