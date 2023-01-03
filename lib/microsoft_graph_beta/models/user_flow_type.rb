module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    UserFlowType = {
        SignUp: :SignUp,
        SignIn: :SignIn,
        SignUpOrSignIn: :SignUpOrSignIn,
        PasswordReset: :PasswordReset,
        ProfileUpdate: :ProfileUpdate,
        ResourceOwner: :ResourceOwner,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
