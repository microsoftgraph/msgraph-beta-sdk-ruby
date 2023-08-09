module MicrosoftGraphBeta
    module Models
        SecurityUserMailboxSetting = {
            None: :None,
            JunkMailDeletion: :JunkMailDeletion,
            IsFromAddressInAddressBook: :IsFromAddressInAddressBook,
            IsFromAddressInAddressSafeList: :IsFromAddressInAddressSafeList,
            IsFromAddressInAddressBlockList: :IsFromAddressInAddressBlockList,
            IsFromAddressInAddressImplicitSafeList: :IsFromAddressInAddressImplicitSafeList,
            IsFromAddressInAddressImplicitJunkList: :IsFromAddressInAddressImplicitJunkList,
            IsFromDomainInDomainSafeList: :IsFromDomainInDomainSafeList,
            IsFromDomainInDomainBlockList: :IsFromDomainInDomainBlockList,
            IsRecipientInRecipientSafeList: :IsRecipientInRecipientSafeList,
            CustomRule: :CustomRule,
            JunkMailRule: :JunkMailRule,
            SenderPraPresent: :SenderPraPresent,
            FromFirstTimeSender: :FromFirstTimeSender,
            Exclusive: :Exclusive,
            PriorSeenPass: :PriorSeenPass,
            SenderAuthenticationSucceeded: :SenderAuthenticationSucceeded,
            IsJunkMailRuleEnabled: :IsJunkMailRuleEnabled,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
