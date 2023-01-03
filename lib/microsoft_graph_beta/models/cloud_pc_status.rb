module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    CloudPcStatus = {
        NotProvisioned: :NotProvisioned,
        Provisioning: :Provisioning,
        Provisioned: :Provisioned,
        InGracePeriod: :InGracePeriod,
        Deprovisioning: :Deprovisioning,
        Failed: :Failed,
        ProvisionedWithWarnings: :ProvisionedWithWarnings,
        Resizing: :Resizing,
        Restoring: :Restoring,
        PendingProvision: :PendingProvision,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
