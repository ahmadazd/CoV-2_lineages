rule create_update_list:
        input:
                "/hps/software/users/cochrane/ena/azyoud/lineages/public_seq_lineages_workflow/workflow/rules/embl-covid19.accs.txt"
        output:
                "/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_seq_workflow_output/embl-covid19.accs_updated.txt"
        params:
                days = 90
        resources:
                mem_mb = 3048,
		tmpdir="/nfs/production/cochrane/ena/users/azyoud"
        shell:
                "python3 /hps/software/users/cochrane/ena/azyoud/lineages/public_seq_lineages_workflow/workflow/scripts/list_updated.py -o /hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/public_seq_workflow_output -f {input} -d {params.days}"
