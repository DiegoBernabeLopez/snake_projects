name='dialigntx'

def get_suffix(name):
    idx=config['work'].index(name)
    return  ("." + config['work'][(idx-1)] if idx > 0 else '')

suffix = get_suffix(name)


rule dialigntx:
    input:
        "{SAMPLES}" + suffix
    output:
        "{SAMPLES}." + name
    params:
        app=config[name]['app'],
        parameters=config[name]['parameters']
    shell:
        '{params.app} {params.parameters} {input} {output}'