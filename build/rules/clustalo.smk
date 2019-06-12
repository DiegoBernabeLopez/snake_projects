name='clustalo'

rule clustalo:
    input: 
        "{SAMPLES}" + config['metadata'][name]['isuffix']
    output:
        "{SAMPLES}" + config['metadata'][name]['osuffix']
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/clustalo -i {input} -o {output} {params.parameters}'
