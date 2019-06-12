name='trimal'

rule trimal:
    input:
        "{SAMPLES}" + config['metadata'][name]['suffix']
    output:
        "{SAMPLES}." + name
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/trimal -in {input} -out {output} {params.parameters}'
