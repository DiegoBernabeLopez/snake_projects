name='tcoffee'
print(config['metadata'][name]['isuffix'])
rule tcoffee:
    input:
        expand("{{SAMPLES}}{suffix}",suffix=config['metadata'][name]['isuffix'])
    output:
        "{SAMPLES}" + config['metadata'][name]['osuffix']
    params:
        parameters=config['metadata'][name]['parameters']
    shell:
        './bin/t_coffee {params.parameters} {input} > {output}'
