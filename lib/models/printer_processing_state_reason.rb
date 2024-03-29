module MicrosoftGraphBeta
    module Models
        PrinterProcessingStateReason = {
            Paused: :Paused,
            MediaJam: :MediaJam,
            MediaNeeded: :MediaNeeded,
            MediaLow: :MediaLow,
            MediaEmpty: :MediaEmpty,
            CoverOpen: :CoverOpen,
            InterlockOpen: :InterlockOpen,
            OutputTrayMissing: :OutputTrayMissing,
            OutputAreaFull: :OutputAreaFull,
            MarkerSupplyLow: :MarkerSupplyLow,
            MarkerSupplyEmpty: :MarkerSupplyEmpty,
            InputTrayMissing: :InputTrayMissing,
            OutputAreaAlmostFull: :OutputAreaAlmostFull,
            MarkerWasteAlmostFull: :MarkerWasteAlmostFull,
            MarkerWasteFull: :MarkerWasteFull,
            FuserOverTemp: :FuserOverTemp,
            FuserUnderTemp: :FuserUnderTemp,
            Other: :Other,
            None: :None,
            MovingToPaused: :MovingToPaused,
            Shutdown: :Shutdown,
            ConnectingToDevice: :ConnectingToDevice,
            TimedOut: :TimedOut,
            Stopping: :Stopping,
            StoppedPartially: :StoppedPartially,
            TonerLow: :TonerLow,
            TonerEmpty: :TonerEmpty,
            SpoolAreaFull: :SpoolAreaFull,
            DoorOpen: :DoorOpen,
            OpticalPhotoConductorNearEndOfLife: :OpticalPhotoConductorNearEndOfLife,
            OpticalPhotoConductorLifeOver: :OpticalPhotoConductorLifeOver,
            DeveloperLow: :DeveloperLow,
            DeveloperEmpty: :DeveloperEmpty,
            InterpreterResourceUnavailable: :InterpreterResourceUnavailable,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
