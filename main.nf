nextflow.enable.dsl = 2


process mock {
    publishDir "${params.results}", mode: 'copy', overwrite: true

    output:
    path('result.txt')

    """
    echo 'Success!' > result.txt
    """
}


workflow {
    mock()
}