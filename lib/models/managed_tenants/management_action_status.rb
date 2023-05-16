module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            ManagementActionStatus = {
                ToAddress: :ToAddress,
                Completed: :Completed,
                Error: :Error,
                TimeOut: :TimeOut,
                InProgress: :InProgress,
                Planned: :Planned,
                ResolvedBy3rdParty: :ResolvedBy3rdParty,
                ResolvedThroughAlternateMitigation: :ResolvedThroughAlternateMitigation,
                RiskAccepted: :RiskAccepted,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
