module MicrosoftGraphBeta
    module Models
        ## 
        # The publishing cadence of the quality update. Possible values are: monthly, outOfBand. This property cannot be modified and is automatically populated when the catalog is created.
        WindowsQualityUpdateCadence = {
            Monthly: :Monthly,
            OutOfBand: :OutOfBand,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
