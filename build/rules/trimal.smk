name='trimal'

idx=config['work'].index(name)
suffix = "." + config['work'][(idx-1)]if idx > 0 else ''


rule trimal:
    input:
        "{SAMPLES}" + suffix
    output:
        "{SAMPLES}." + name
    params:
        app=config[name]['app'],
        parameters=config[name]['parameters']
    shell:
        '{params.app} -in {input} -out {output} {params.parameters}'
