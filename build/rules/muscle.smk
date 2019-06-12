name='muscle'
config['metadata'][name]['isuffix']='.metaligner'
rule muscle:
    input:
        {SAMPLES} + config['metadata'][name]['isuffix']
    output:
        {SAMPLES} + config['metadata'][name]['osuffix']
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/muscle -in {input} -out {output} {params.parameters}'
