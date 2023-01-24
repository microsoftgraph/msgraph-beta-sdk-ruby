module MicrosoftGraphBeta::Models
    ## 
    # Device scope configuration parameter. It will be expend in future to add more parameter. Eg: device scope parameter can be OS version, Disk Type, Device manufacturer, device model or Scope tag. Default value: scopeTag.
    DeviceScopeParameter = {
        None: :None,
        ScopeTag: :ScopeTag,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
