name='trimal'

rule trimal:
    input: 
        "{SAMPLES}" + config['metadata'][name]['isuffix']
    output:
        "{SAMPLES}" + config['metadata'][name]['osuffix']
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/trimal -in {input} -out {output} {params.parameters}'
