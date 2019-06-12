name='dialigntx'

rule dialigntx:
    input:
        "{SAMPLES}" + config['metadata'][name]['suffix']
    output:
        "{SAMPLES}." + name
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/dialign-tx {params.parameters} {input} {output}'