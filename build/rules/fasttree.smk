
idx=config['work'].index('fasttree')
print(config['work'][0])
suffix = "." + config['work'][(idx-1)] if idx > 0 else ''

rule fasttree:
    input:
        "{SAMPLES}" + suffix
    output:
        "{SAMPLES}.fasttree"
    params:
        app=config['fasttree']['app'],
        parameters=config['fasttree']['parameters']
    shell:
        '{params.app} {params.parameters} {input} > {output}'
