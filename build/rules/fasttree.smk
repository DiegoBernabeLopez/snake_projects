rule fasttree:
    input:
        "{SAMPLES}.fa"
    output:
        "{SAMPLES}.fa.nw"
    params:
        app=config['fasttree']['app'],
        parameters=config['fasttree']['parameters']
    shell:
        '{params.app} {params.parameters} {input} > {output}'
