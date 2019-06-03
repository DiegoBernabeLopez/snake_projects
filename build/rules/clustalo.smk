idx=config['work'].index('clustalo')
print(config['work'][0])
suffix = "." + config['work'][(idx-1)]if idx > 0 else ''


rule clustalomega:
    input:
        "{SAMPLES}" + suffix
    output:
        "{SAMPLES}.clustalo"
    params:
        app=config['clustalo']['app'],
        parameters=config['clustalo']['parameters']
    shell:
        '{params.app} -i {input} -o {output} {params.parameters}'
