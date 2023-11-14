require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EntitlementsDataCollection < MicrosoftGraphBeta::Models::EntitlementsDataCollectionInfo
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The lastCollectionDateTime property
            @last_collection_date_time
            ## 
            # The permissionsModificationCapability property
            @permissions_modification_capability
            ## 
            # The status property
            @status
            ## 
            ## Instantiates a new entitlementsDataCollection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.entitlementsDataCollection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a entitlements_data_collection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EntitlementsDataCollection.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastCollectionDateTime" => lambda {|n| @last_collection_date_time = n.get_date_time_value() },
                    "permissionsModificationCapability" => lambda {|n| @permissions_modification_capability = n.get_enum_value(MicrosoftGraphBeta::Models::PermissionsModificationCapability) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::DataCollectionStatus) },
                })
            end
            ## 
            ## Gets the lastCollectionDateTime property value. The lastCollectionDateTime property
            ## @return a date_time
            ## 
            def last_collection_date_time
                return @last_collection_date_time
            end
            ## 
            ## Sets the lastCollectionDateTime property value. The lastCollectionDateTime property
            ## @param value Value to set for the lastCollectionDateTime property.
            ## @return a void
            ## 
            def last_collection_date_time=(value)
                @last_collection_date_time = value
            end
            ## 
            ## Gets the permissionsModificationCapability property value. The permissionsModificationCapability property
            ## @return a permissions_modification_capability
            ## 
            def permissions_modification_capability
                return @permissions_modification_capability
            end
            ## 
            ## Sets the permissionsModificationCapability property value. The permissionsModificationCapability property
            ## @param value Value to set for the permissionsModificationCapability property.
            ## @return a void
            ## 
            def permissions_modification_capability=(value)
                @permissions_modification_capability = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("lastCollectionDateTime", @last_collection_date_time)
                writer.write_enum_value("permissionsModificationCapability", @permissions_modification_capability)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a data_collection_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
