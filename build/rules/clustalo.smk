rule clustalomega:
    input:
        "{SAMPLES}"
    output:
        "{SAMPLES}.fa"
    params:
        app=config['clustalo']['app'],
        parameters=config['clustalo']['parameters']
    shell:
        '{params.app} -i {input} -o {output} {params.parameters}'
