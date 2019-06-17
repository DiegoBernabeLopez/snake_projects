name='dialigntx'

rule dialigntx:
    input: 
        "{SAMPLES}" + config['metadata'][name]['isuffix']
    output:
        "{SAMPLES}" + config['metadata'][name]['osuffix']
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/dialign-tx {params.parameters} {input} {output}'