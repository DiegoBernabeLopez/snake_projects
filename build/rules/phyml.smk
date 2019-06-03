
idx=config['work'].index('phyml')
print(config['work'][0])
suffix = "." + config['work'][(idx-1)] if idx > 0 else ''

rule phyml:
    input:
        "{SAMPLES}" + suffix
    output:
        "{SAMPLES}.phyml"
    params:
        app=config['phyml']['app'],
        parameters=config['phyml']['parameters']
    shell:
        '{params.app} -i {input} {params.parameters} > {output}'
