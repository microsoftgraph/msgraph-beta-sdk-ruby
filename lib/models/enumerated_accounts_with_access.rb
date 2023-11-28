require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EnumeratedAccountsWithAccess < MicrosoftGraphBeta::Models::AccountsWithAccess
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accounts property
            @accounts
            ## 
            ## Gets the accounts property value. The accounts property
            ## @return a authorization_system
            ## 
            def accounts
                return @accounts
            end
            ## 
            ## Sets the accounts property value. The accounts property
            ## @param value Value to set for the accounts property.
            ## @return a void
            ## 
            def accounts=(value)
                @accounts = value
            end
            ## 
            ## Instantiates a new enumeratedAccountsWithAccess and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.enumeratedAccountsWithAccess"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a enumerated_accounts_with_access
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EnumeratedAccountsWithAccess.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accounts" => lambda {|n| @accounts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystem.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("accounts", @accounts)
            end
        end
    end
end
