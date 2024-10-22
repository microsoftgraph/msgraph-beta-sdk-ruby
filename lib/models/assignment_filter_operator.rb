module MicrosoftGraphBeta
    module Models
        ## 
        # Represents the different type of operators which can be used to craft the AssignmentFilter rule.
        AssignmentFilterOperator = {
            NotSet: :NotSet,
            Equals: :Equals,
            NotEquals: :NotEquals,
            StartsWith: :StartsWith,
            NotStartsWith: :NotStartsWith,
            Contains: :Contains,
            NotContains: :NotContains,
            In: :In,
            NotIn: :NotIn,
            EndsWith: :EndsWith,
            NotEndsWith: :NotEndsWith,
            GreaterThan: :GreaterThan,
            GreaterThanOrEquals: :GreaterThanOrEquals,
            LessThan: :LessThan,
            LessThanOrEquals: :LessThanOrEquals,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
