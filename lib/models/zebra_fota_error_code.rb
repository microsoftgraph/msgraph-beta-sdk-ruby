module MicrosoftGraphBeta
    module Models
        ## 
        # An error code indicating the failure reason, when the deployment state is createFailed. Possible values: See zebraFotaErrorCode enum.
        ZebraFotaErrorCode = {
            Success: :Success,
            NoDevicesFoundInSelectedAadGroups: :NoDevicesFoundInSelectedAadGroups,
            NoIntuneDevicesFoundInSelectedAadGroups: :NoIntuneDevicesFoundInSelectedAadGroups,
            NoZebraFotaEnrolledDevicesFoundForCurrentTenant: :NoZebraFotaEnrolledDevicesFoundForCurrentTenant,
            NoZebraFotaEnrolledDevicesFoundInSelectedAadGroups: :NoZebraFotaEnrolledDevicesFoundInSelectedAadGroups,
            NoZebraFotaDevicesFoundForSelectedDeviceModel: :NoZebraFotaDevicesFoundForSelectedDeviceModel,
            ZebraFotaCreateDeploymentRequestFailure: :ZebraFotaCreateDeploymentRequestFailure,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
