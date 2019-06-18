name='raxml'

rule raxml:
    input: 
        "{SAMPLES}" + config['metadata'][name]['isuffix']
    output:
        "{SAMPLES}" + config['metadata'][name]['osuffix']
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        """
        workdir=$( realpath {input} | rev | cut -d/ -f2- | rev )
        output=$( realpath {output} | rev | cut -d/ -f1 | rev )
        echo $output
        ./bin/raxmlHPC-SSE3 -s {input} -w $workdir -n $output {params.parameters}
        ln -s RAxML_result.$output {output}
        """
