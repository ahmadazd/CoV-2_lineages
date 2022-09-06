rule run_pangolin:
	input:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/public_multifasta/multifasta_{n}.fasta"
	output:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_consensus_workflow_output/pango/pango_lineages.{n}.csv"
	threads: 4
	resources:
		mem_mb = 3048,
		tmpdir="/nfs/production/cochrane/ena/users/azyoud"
	shell:
		"pangolin --threads {threads} --outfile {output} {input}"
