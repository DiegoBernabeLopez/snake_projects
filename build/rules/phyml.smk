name='phyml'

rule phyml:
    input: 
        "{SAMPLES}" + config['metadata'][name]['isuffix']
    output:
        "{SAMPLES}" + config['metadata'][name]['osuffix']
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/phyml -i {input} {params.parameters} > {output}'
