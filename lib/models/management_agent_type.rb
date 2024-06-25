module MicrosoftGraphBeta
    module Models
        ## 
        # Management agent type.
        ManagementAgentType = {
            Eas: :Eas,
            Mdm: :Mdm,
            EasMdm: :EasMdm,
            IntuneClient: :IntuneClient,
            EasIntuneClient: :EasIntuneClient,
            ConfigurationManagerClient: :ConfigurationManagerClient,
            ConfigurationManagerClientMdm: :ConfigurationManagerClientMdm,
            ConfigurationManagerClientMdmEas: :ConfigurationManagerClientMdmEas,
            Unknown: :Unknown,
            Jamf: :Jamf,
            GoogleCloudDevicePolicyController: :GoogleCloudDevicePolicyController,
            Microsoft365ManagedMdm: :Microsoft365ManagedMdm,
            MsSense: :MsSense,
            IntuneAosp: :IntuneAosp,
            Google: :Google,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
