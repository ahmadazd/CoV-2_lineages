rule create_multifasta:
	input:
		expand("{output_dir}/private_consensus/end.txt", output_dir=config["output_dir"])
	output:
		expand("{output_dir}/private_multifasta/multifasta_{n}.fasta", n=range(1,config["chunks"]+1), output_dir=config["output_dir"])
	resources:
                tmpdir=config["temp_dir"]
	params:
		num = str(config["chunks"])
	shell:
		"python {config[script_dir]}/scripts/create_multifasta.py -f {config[output_dir]}/private_consensus -num {params.num} -o {config[output_dir]}/private_multifasta"
