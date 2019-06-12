name='iqtree'

rule iqtree:
    input:
        "{SAMPLES}" + config['metadata'][name]['suffix']
    output:
        "{SAMPLES}." + name
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/iqtree -s {input} {params.parameters} > {output}'