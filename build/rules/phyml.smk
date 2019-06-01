rule phyml:
    input:
        "{SAMPLES}.fa"
    output:
        "{SAMPLES}.fa.nw"
    params:
        app=config['phyml']['app'],
        parameters=config['phyml']['parameters']
    shell:
        '{params.app} -i {input} {params.parameters} > {output}'
