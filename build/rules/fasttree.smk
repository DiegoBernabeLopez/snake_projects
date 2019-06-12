name='fasttree'

rule fasttree:
    input:
        "{SAMPLES}" + config['metadata'][name]['isuffix']
    output:
        "{SAMPLES}" + config['metadata'][name]['osuffix']
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/FastTree {params.parameters} {input} > {output}'
