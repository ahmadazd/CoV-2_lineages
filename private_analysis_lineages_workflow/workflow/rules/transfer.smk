rule transfer:
    input:
         "/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/pango_lineages.csv"
    output:
          "/hps/nobackup/cochrane/ena/users/azyoud/lineages_workflow_output/end.txt"
    shell:
         "sh /hps/software/users/cochrane/ena/azyoud/lineages/private_analysis_lineages_workflow/workflow/rules/transfer_command.sh"
