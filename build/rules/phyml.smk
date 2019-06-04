name='phyml'

idx=config['work'].index(name)
suffix = "." + config['work'][(idx-1)] if idx > 0 else ''

rule phyml:
    input:
        "{SAMPLES}" + suffix
    output:
        "{SAMPLES}." + name
    params:
        app=config[name]['app'],
        parameters=config[name]['parameters']
    shell:
        '{params.app} -i {input} {params.parameters} > {output}'