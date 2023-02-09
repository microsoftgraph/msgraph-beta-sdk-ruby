require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SubjectRightsRequestEnumeratedMailboxLocation < MicrosoftGraphBeta::Models::SubjectRightsRequestMailboxLocation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of mailboxes that should be included in the search. Includes the UPN (user principal name) of each mailbox, for example, Monica.Thompson@contoso.com.
            @upns
            ## 
            ## Instantiates a new SubjectRightsRequestEnumeratedMailboxLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.subjectRightsRequestEnumeratedMailboxLocation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a subject_rights_request_enumerated_mailbox_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SubjectRightsRequestEnumeratedMailboxLocation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "upns" => lambda {|n| @upns = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("upns", @upns)
            end
            ## 
            ## Gets the upns property value. Collection of mailboxes that should be included in the search. Includes the UPN (user principal name) of each mailbox, for example, Monica.Thompson@contoso.com.
            ## @return a string
            ## 
            def upns
                return @upns
            end
            ## 
            ## Sets the upns property value. Collection of mailboxes that should be included in the search. Includes the UPN (user principal name) of each mailbox, for example, Monica.Thompson@contoso.com.
            ## @param value Value to set for the upns property.
            ## @return a void
            ## 
            def upns=(value)
                @upns = value
            end
        end
    end
end
