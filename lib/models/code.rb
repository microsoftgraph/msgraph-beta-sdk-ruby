module MicrosoftGraphBeta
    module Models
        ## 
        # Error code for rule validation.
        Code = {
            None: :None,
            JsonFileInvalid: :JsonFileInvalid,
            JsonFileMissing: :JsonFileMissing,
            JsonFileTooLarge: :JsonFileTooLarge,
            RulesMissing: :RulesMissing,
            DuplicateRules: :DuplicateRules,
            TooManyRulesSpecified: :TooManyRulesSpecified,
            OperatorMissing: :OperatorMissing,
            OperatorNotSupported: :OperatorNotSupported,
            DatatypeMissing: :DatatypeMissing,
            DatatypeNotSupported: :DatatypeNotSupported,
            OperatorDataTypeCombinationNotSupported: :OperatorDataTypeCombinationNotSupported,
            MoreInfoUriMissing: :MoreInfoUriMissing,
            MoreInfoUriInvalid: :MoreInfoUriInvalid,
            MoreInfoUriTooLarge: :MoreInfoUriTooLarge,
            DescriptionMissing: :DescriptionMissing,
            DescriptionInvalid: :DescriptionInvalid,
            DescriptionTooLarge: :DescriptionTooLarge,
            TitleMissing: :TitleMissing,
            TitleInvalid: :TitleInvalid,
            TitleTooLarge: :TitleTooLarge,
            OperandMissing: :OperandMissing,
            OperandInvalid: :OperandInvalid,
            OperandTooLarge: :OperandTooLarge,
            SettingNameMissing: :SettingNameMissing,
            SettingNameInvalid: :SettingNameInvalid,
            SettingNameTooLarge: :SettingNameTooLarge,
            EnglishLocaleMissing: :EnglishLocaleMissing,
            DuplicateLocales: :DuplicateLocales,
            UnrecognizedLocale: :UnrecognizedLocale,
            Unknown: :Unknown,
            RemediationStringsMissing: :RemediationStringsMissing,
        }
    end
end
