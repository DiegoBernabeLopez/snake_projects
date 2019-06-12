name='phyml'

rule phyml:
    input:
        "{SAMPLES}" + config['metadata'][name]['suffix']
    output:
        "{SAMPLES}." + name
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/phyml -i {input} {params.parameters} > {output}'
