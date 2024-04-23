require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesQualityUpdateCatalogEntry < MicrosoftGraphBeta::Models::WindowsUpdatesSoftwareUpdateCatalogEntry
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The catalog name of the content. Read-only.
            @catalog_name
            ## 
            # Severity information of the Common Vulnerabilities and Exposures associated with the content.
            @cve_severity_information
            ## 
            # Indicates whether the content can be deployed as an expedited quality update. Read-only.
            @is_expeditable
            ## 
            # The operating system product revisions that are released as part of this quality update.
            @product_revisions
            ## 
            # The publishing cadence of the quality update. Possible values are: monthly, outOfBand, unknownFutureValue. Read-only.
            @quality_update_cadence
            ## 
            # The qualityUpdateClassification property
            @quality_update_classification
            ## 
            # The short name of the content. Read-only.
            @short_name
            ## 
            ## Gets the catalogName property value. The catalog name of the content. Read-only.
            ## @return a string
            ## 
            def catalog_name
                return @catalog_name
            end
            ## 
            ## Sets the catalogName property value. The catalog name of the content. Read-only.
            ## @param value Value to set for the catalogName property.
            ## @return a void
            ## 
            def catalog_name=(value)
                @catalog_name = value
            end
            ## 
            ## Instantiates a new WindowsUpdatesQualityUpdateCatalogEntry and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_quality_update_catalog_entry
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesQualityUpdateCatalogEntry.new
            end
            ## 
            ## Gets the cveSeverityInformation property value. Severity information of the Common Vulnerabilities and Exposures associated with the content.
            ## @return a windows_updates_quality_update_cve_severity_information
            ## 
            def cve_severity_information
                return @cve_severity_information
            end
            ## 
            ## Sets the cveSeverityInformation property value. Severity information of the Common Vulnerabilities and Exposures associated with the content.
            ## @param value Value to set for the cveSeverityInformation property.
            ## @return a void
            ## 
            def cve_severity_information=(value)
                @cve_severity_information = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "catalogName" => lambda {|n| @catalog_name = n.get_string_value() },
                    "cveSeverityInformation" => lambda {|n| @cve_severity_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesQualityUpdateCveSeverityInformation.create_from_discriminator_value(pn) }) },
                    "isExpeditable" => lambda {|n| @is_expeditable = n.get_boolean_value() },
                    "productRevisions" => lambda {|n| @product_revisions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesProductRevision.create_from_discriminator_value(pn) }) },
                    "qualityUpdateCadence" => lambda {|n| @quality_update_cadence = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdatesQualityUpdateCadence) },
                    "qualityUpdateClassification" => lambda {|n| @quality_update_classification = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdatesQualityUpdateClassification) },
                    "shortName" => lambda {|n| @short_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isExpeditable property value. Indicates whether the content can be deployed as an expedited quality update. Read-only.
            ## @return a boolean
            ## 
            def is_expeditable
                return @is_expeditable
            end
            ## 
            ## Sets the isExpeditable property value. Indicates whether the content can be deployed as an expedited quality update. Read-only.
            ## @param value Value to set for the isExpeditable property.
            ## @return a void
            ## 
            def is_expeditable=(value)
                @is_expeditable = value
            end
            ## 
            ## Gets the productRevisions property value. The operating system product revisions that are released as part of this quality update.
            ## @return a windows_updates_product_revision
            ## 
            def product_revisions
                return @product_revisions
            end
            ## 
            ## Sets the productRevisions property value. The operating system product revisions that are released as part of this quality update.
            ## @param value Value to set for the productRevisions property.
            ## @return a void
            ## 
            def product_revisions=(value)
                @product_revisions = value
            end
            ## 
            ## Gets the qualityUpdateCadence property value. The publishing cadence of the quality update. Possible values are: monthly, outOfBand, unknownFutureValue. Read-only.
            ## @return a windows_updates_quality_update_cadence
            ## 
            def quality_update_cadence
                return @quality_update_cadence
            end
            ## 
            ## Sets the qualityUpdateCadence property value. The publishing cadence of the quality update. Possible values are: monthly, outOfBand, unknownFutureValue. Read-only.
            ## @param value Value to set for the qualityUpdateCadence property.
            ## @return a void
            ## 
            def quality_update_cadence=(value)
                @quality_update_cadence = value
            end
            ## 
            ## Gets the qualityUpdateClassification property value. The qualityUpdateClassification property
            ## @return a windows_updates_quality_update_classification
            ## 
            def quality_update_classification
                return @quality_update_classification
            end
            ## 
            ## Sets the qualityUpdateClassification property value. The qualityUpdateClassification property
            ## @param value Value to set for the qualityUpdateClassification property.
            ## @return a void
            ## 
            def quality_update_classification=(value)
                @quality_update_classification = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("catalogName", @catalog_name)
                writer.write_object_value("cveSeverityInformation", @cve_severity_information)
                writer.write_boolean_value("isExpeditable", @is_expeditable)
                writer.write_collection_of_object_values("productRevisions", @product_revisions)
                writer.write_enum_value("qualityUpdateCadence", @quality_update_cadence)
                writer.write_enum_value("qualityUpdateClassification", @quality_update_classification)
                writer.write_string_value("shortName", @short_name)
            end
            ## 
            ## Gets the shortName property value. The short name of the content. Read-only.
            ## @return a string
            ## 
            def short_name
                return @short_name
            end
            ## 
            ## Sets the shortName property value. The short name of the content. Read-only.
            ## @param value Value to set for the shortName property.
            ## @return a void
            ## 
            def short_name=(value)
                @short_name = value
            end
        end
    end
end
