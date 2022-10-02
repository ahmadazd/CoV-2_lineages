rule transfer:
        input:
                "/nfs/production/cochrane/ena/index/ena-dcap-ebisearch/output/covid19/embl-covid19.accs.txt"
        output:
                "/hps/software/users/cochrane/ena/azyoud/lineages/public_seq_lineages_workflow/workflow/rules/embl-covid19.accs.txt"

        shell:
                 "cp /nfs/production/cochrane/ena/index/ena-dcap-ebisearch/output/covid19/embl-covid19.accs.txt /hps/software/users/cochrane/ena/azyoud/lineages/public_seq_lineages_workflow/workflow/rules/embl-covid19.accs.txt"
