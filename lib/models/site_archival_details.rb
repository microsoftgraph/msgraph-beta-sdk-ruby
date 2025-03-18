require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SiteArchivalDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents the current archive status of the site collection. Returned only on $select.
            @archive_status
            ## 
            # The archivedBy property
            @archived_by
            ## 
            # The archivedDateTime property
            @archived_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the archiveStatus property value. Represents the current archive status of the site collection. Returned only on $select.
            ## @return a site_archive_status
            ## 
            def archive_status
                return @archive_status
            end
            ## 
            ## Sets the archiveStatus property value. Represents the current archive status of the site collection. Returned only on $select.
            ## @param value Value to set for the archiveStatus property.
            ## @return a void
            ## 
            def archive_status=(value)
                @archive_status = value
            end
            ## 
            ## Gets the archivedBy property value. The archivedBy property
            ## @return a identity_set
            ## 
            def archived_by
                return @archived_by
            end
            ## 
            ## Sets the archivedBy property value. The archivedBy property
            ## @param value Value to set for the archivedBy property.
            ## @return a void
            ## 
            def archived_by=(value)
                @archived_by = value
            end
            ## 
            ## Gets the archivedDateTime property value. The archivedDateTime property
            ## @return a date_time
            ## 
            def archived_date_time
                return @archived_date_time
            end
            ## 
            ## Sets the archivedDateTime property value. The archivedDateTime property
            ## @param value Value to set for the archivedDateTime property.
            ## @return a void
            ## 
            def archived_date_time=(value)
                @archived_date_time = value
            end
            ## 
            ## Instantiates a new SiteArchivalDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a site_archival_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SiteArchivalDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "archiveStatus" => lambda {|n| @archive_status = n.get_enum_value(MicrosoftGraphBeta::Models::SiteArchiveStatus) },
                    "archivedBy" => lambda {|n| @archived_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "archivedDateTime" => lambda {|n| @archived_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("archiveStatus", @archive_status)
                writer.write_object_value("archivedBy", @archived_by)
                writer.write_date_time_value("archivedDateTime", @archived_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
