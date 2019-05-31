rule fasttree:
    input:
        {sample}
    output:
        
    params:
        app=config['fasttree']['app'],
        parameters=config['fasttree']['parameters']
    shell:
        '{params.app} {params.parameters} {input} > {output}'
