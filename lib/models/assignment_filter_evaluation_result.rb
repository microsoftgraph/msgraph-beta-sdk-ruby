module MicrosoftGraphBeta::Models
    ## 
    # Supported evaluation results for filter.
    AssignmentFilterEvaluationResult = {
        Unknown: :Unknown,
        Match: :Match,
        NotMatch: :NotMatch,
        Inconclusive: :Inconclusive,
        Failure: :Failure,
        NotEvaluated: :NotEvaluated,
    }
end
