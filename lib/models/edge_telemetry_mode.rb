module MicrosoftGraphBeta::Models
    ## 
    # Type of browsing data sent to Microsoft 365 analytics
    EdgeTelemetryMode = {
        NotConfigured: :NotConfigured,
        Intranet: :Intranet,
        Internet: :Internet,
        IntranetAndInternet: :IntranetAndInternet,
    }
end
