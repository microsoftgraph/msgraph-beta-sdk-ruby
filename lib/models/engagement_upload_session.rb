require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Engagement upload session.
        class EngagementUploadSession < MicrosoftGraphBeta::Models::UploadSession
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ID of the session.
            @id
            ## 
            ## Instantiates a new EngagementUploadSession and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a engagement_upload_session
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EngagementUploadSession.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "id" => lambda {|n| @id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the id property value. The ID of the session.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The ID of the session.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("id", @id)
            end
        end
    end
end
