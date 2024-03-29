module MicrosoftGraphBeta
    module Models
        SecurityFileProcessingStatus = {
            Success: :Success,
            InternalError: :InternalError,
            UnknownError: :UnknownError,
            ProcessingTimeout: :ProcessingTimeout,
            InvalidFileId: :InvalidFileId,
            FileSizeIsZero: :FileSizeIsZero,
            FileSizeIsTooLarge: :FileSizeIsTooLarge,
            FileDepthLimitExceeded: :FileDepthLimitExceeded,
            FileBodyIsTooLong: :FileBodyIsTooLong,
            FileTypeIsUnknown: :FileTypeIsUnknown,
            FileTypeIsNotSupported: :FileTypeIsNotSupported,
            MalformedFile: :MalformedFile,
            ProtectedFile: :ProtectedFile,
            PoisonFile: :PoisonFile,
            NoReviewSetSummaryGenerated: :NoReviewSetSummaryGenerated,
            ExtractionException: :ExtractionException,
            OcrProcessingTimeout: :OcrProcessingTimeout,
            OcrFileSizeExceedsLimit: :OcrFileSizeExceedsLimit,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
