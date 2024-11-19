module MicrosoftGraphBeta
    module Models
        ## 
        # Indicates whether tenant has a valid Intune Endpoint Privilege Management license. Possible value are : 0 - notPaid, 1 - paid, 2 - trial. See LicenseType enum for more details. Default notPaid .
        LicenseType = {
            NotPaid: :NotPaid,
            Paid: :Paid,
            Trial: :Trial,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
