name='raxml'

rule raxml:
    input: 
        "{SAMPLES}" + config['metadata'][name]['isuffix']
    output:
        "{SAMPLES}" + config['metadata'][name]['osuffix']
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/raxmlHPC-SSE3 -s {input} -n {output} {params.parameters}'
