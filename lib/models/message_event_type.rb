module MicrosoftGraphBeta
    module Models
        MessageEventType = {
            Received: :Received,
            Sent: :Sent,
            Delivered: :Delivered,
            Failed: :Failed,
            ProcessingFailed: :ProcessingFailed,
            DistributionGroupExpanded: :DistributionGroupExpanded,
            Submitted: :Submitted,
            Delayed: :Delayed,
            Redirected: :Redirected,
            Resolved: :Resolved,
            Dropped: :Dropped,
            RecipientsAdded: :RecipientsAdded,
            MalwareDetected: :MalwareDetected,
            MalwareDetectedInMessage: :MalwareDetectedInMessage,
            MalwareDetectedInAttachment: :MalwareDetectedInAttachment,
            TtZapped: :TtZapped,
            TtDelivered: :TtDelivered,
            SpamDetected: :SpamDetected,
            TransportRuleTriggered: :TransportRuleTriggered,
            DlpRuleTriggered: :DlpRuleTriggered,
            Journaled: :Journaled,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
