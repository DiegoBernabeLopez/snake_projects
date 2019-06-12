name='raxml'

rule raxml:
    input:
        "{SAMPLES}" + config['metadata'][name]['suffix']
    output:
        "{SAMPLES}." + name
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/raxmlHPC-SSE3 -s {input} -n {output} {params.parameters}'
