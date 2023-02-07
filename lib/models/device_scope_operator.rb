module MicrosoftGraphBeta::Models
    ## 
    # Device scope configuration query operator. Possible values are: equals, notEquals, contains, notContains, greaterThan, lessThan. Default value: equals.
    DeviceScopeOperator = {
        None: :None,
        Equals: :Equals,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
