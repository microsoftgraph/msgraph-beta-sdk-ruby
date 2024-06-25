require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityCollaborationRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains metadata for analyzed emails.
            @analyzed_emails
            ## 
            ## Gets the analyzedEmails property value. Contains metadata for analyzed emails.
            ## @return a security_analyzed_email
            ## 
            def analyzed_emails
                return @analyzed_emails
            end
            ## 
            ## Sets the analyzedEmails property value. Contains metadata for analyzed emails.
            ## @param value Value to set for the analyzedEmails property.
            ## @return a void
            ## 
            def analyzed_emails=(value)
                @analyzed_emails = value
            end
            ## 
            ## Instantiates a new SecurityCollaborationRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_collaboration_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityCollaborationRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "analyzedEmails" => lambda {|n| @analyzed_emails = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAnalyzedEmail.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("analyzedEmails", @analyzed_emails)
            end
        end
    end
end
