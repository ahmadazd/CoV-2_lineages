rule fetch_public_seq_multifasta:
	input:
		"/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_seq_workflow_output/embl-covid19.accs_updated.txt"
	output:
                expand("/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_seq_workflow_output/public_seq_multifasta/multifasta_{n}.fasta", n=range(1,config["chunks"]+1))
	params:
                num = str(config["chunks"])
	threads: 4
        
	resources:
                mem_mb = 3048,
		tmpdir="/nfs/production/cochrane/ena/users/azyoud"
	shell:
		 "python3 /hps/software/users/cochrane/ena/azyoud/lineages/public_seq_lineages_workflow/workflow/scripts/data_fetch_public_seq.py -o /hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_seq_workflow_output/public_seq_multifasta -f {input} -num {params.num}"
