require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # By providing configurations in this profile you can instruct the Nine Work email client on Android For Work devices to communicate with an Exchange server and get email, contacts, calendar, tasks, and notes. Furthermore, you can also specify how much email to sync and how often the device should sync.
        class AndroidForWorkNineWorkEasConfiguration < MicrosoftGraphBeta::Models::AndroidForWorkEasEmailProfileBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Toggles syncing the calendar. If set to false the calendar is turned off on the device.
            @sync_calendar
            ## 
            # Toggles syncing contacts. If set to false contacts are turned off on the device.
            @sync_contacts
            ## 
            # Toggles syncing tasks. If set to false tasks are turned off on the device.
            @sync_tasks
            ## 
            ## Instantiates a new androidForWorkNineWorkEasConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidForWorkNineWorkEasConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_for_work_nine_work_eas_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidForWorkNineWorkEasConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "syncCalendar" => lambda {|n| @sync_calendar = n.get_boolean_value() },
                    "syncContacts" => lambda {|n| @sync_contacts = n.get_boolean_value() },
                    "syncTasks" => lambda {|n| @sync_tasks = n.get_boolean_value() },
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
                writer.write_boolean_value("syncCalendar", @sync_calendar)
                writer.write_boolean_value("syncContacts", @sync_contacts)
                writer.write_boolean_value("syncTasks", @sync_tasks)
            end
            ## 
            ## Gets the syncCalendar property value. Toggles syncing the calendar. If set to false the calendar is turned off on the device.
            ## @return a boolean
            ## 
            def sync_calendar
                return @sync_calendar
            end
            ## 
            ## Sets the syncCalendar property value. Toggles syncing the calendar. If set to false the calendar is turned off on the device.
            ## @param value Value to set for the sync_calendar property.
            ## @return a void
            ## 
            def sync_calendar=(value)
                @sync_calendar = value
            end
            ## 
            ## Gets the syncContacts property value. Toggles syncing contacts. If set to false contacts are turned off on the device.
            ## @return a boolean
            ## 
            def sync_contacts
                return @sync_contacts
            end
            ## 
            ## Sets the syncContacts property value. Toggles syncing contacts. If set to false contacts are turned off on the device.
            ## @param value Value to set for the sync_contacts property.
            ## @return a void
            ## 
            def sync_contacts=(value)
                @sync_contacts = value
            end
            ## 
            ## Gets the syncTasks property value. Toggles syncing tasks. If set to false tasks are turned off on the device.
            ## @return a boolean
            ## 
            def sync_tasks
                return @sync_tasks
            end
            ## 
            ## Sets the syncTasks property value. Toggles syncing tasks. If set to false tasks are turned off on the device.
            ## @param value Value to set for the sync_tasks property.
            ## @return a void
            ## 
            def sync_tasks=(value)
                @sync_tasks = value
            end
        end
    end
end
