module MicrosoftGraphBeta
    module Models
        ## 
        # Contains all supported file system detection type.
        Win32LobAppFileSystemDetectionType = {
            NotConfigured: :NotConfigured,
            Exists: :Exists,
            ModifiedDate: :ModifiedDate,
            CreatedDate: :CreatedDate,
            Version: :Version,
            SizeInMB: :SizeInMB,
            DoesNotExist: :DoesNotExist,
        }
    end
end
