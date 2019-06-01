rule fasttree:
    input:
        "{sample}.fa"
    output:
        "{sample}.fa.nw"
    params:
        app=config['fasttree']['app'],
        parameters=config['fasttree']['parameters']
    shell:
        '{params.app} {params.parameters} {input} > {output}'
