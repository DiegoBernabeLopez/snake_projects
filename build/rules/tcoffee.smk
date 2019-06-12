name='tcoffee'

rule tcoffee:
    input:
        expand("{sample}{suffix}",sample=config['in'],suffix=config['metadata'][name]['isuffix'])
    output:
        "{SAMPLES}" + config['metadata'][name]['osuffix']
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/t_coffee {params.parameters} {input} > {output}'