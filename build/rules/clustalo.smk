rule clustalomega:
    input:
        {sample}
    output:
        
    params:
        app=config['clustalo']['app'],
        parameters=config['clustalo']['parameters']
    shell:
        '{params.app} -i {input} -o {output} {params} {params.parameters}'
