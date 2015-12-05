function manuel_tasks {
    compls=$(manuel list)

    if [[ $? -eq 0 ]]; then
        completions=(${=compls})
        compadd -- $completions
        return 0
    else
        return 1
    fi
}

compdef manuel_tasks manuel
