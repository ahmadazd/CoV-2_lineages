rule concat_csv:
	input:
		expand("{output_dir}/pango/pango_lineages.{n}.csv", n=range(1,config["chunks"]+1), output_dir=config["output_dir"])
	output:
		"{output_dir}/pango_lineages.csv"
	resources:
                mem_mb = 3048,
                tmpdir=config["temp_dir"]
	params:
                host=''
                portal=
                serviceName=''

	shell:
		"python {config[script_dir]}/scripts/concatenate_pangolin.py -h {params.host} -p {params.portal} -s {params.serviceName} -f {config[output_dir]}/pango -o {output}"
