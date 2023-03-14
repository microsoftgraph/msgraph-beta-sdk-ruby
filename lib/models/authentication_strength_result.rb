module MicrosoftGraphBeta
    module Models
        AuthenticationStrengthResult = {
            NotSet: :NotSet,
            SkippedForProofUp: :SkippedForProofUp,
            Satisfied: :Satisfied,
            SingleChallengeRequired: :SingleChallengeRequired,
            MultipleChallengesRequired: :MultipleChallengesRequired,
            SingleRegistrationRequired: :SingleRegistrationRequired,
            MultipleRegistrationsRequired: :MultipleRegistrationsRequired,
            CannotSatisfyDueToCombinationConfiguration: :CannotSatisfyDueToCombinationConfiguration,
            CannotSatisfy: :CannotSatisfy,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
