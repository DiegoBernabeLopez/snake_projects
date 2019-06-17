name='tcoffee'

rule tcoffee:
    input:
        expand("{{SAMPLES}}{suffix}",suffix=config['metadata'][name]['isuffix'])
    output:
        "{SAMPLES}" + config['metadata'][name]['osuffix']
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/t_coffee {input} {params.parameters} > {output}'
