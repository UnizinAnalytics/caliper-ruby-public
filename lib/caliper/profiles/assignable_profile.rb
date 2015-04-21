require_relative './profile'

module Caliper
  module Profiles

    module AssignableActions
      ABANDONED = "http://purl.imsglobal.org/vocab/caliper/v1/action#Abandoned"
      ACTIVATED = "http://purl.imsglobal.org/vocab/caliper/v1/action#Activated"
      COMPLETED = "http://purl.imsglobal.org/vocab/caliper/v1/action#Completed"
      DEACTIVATED = "http://purl.imsglobal.org/vocab/caliper/v1/action#Deactivated"
      HID = "http://purl.imsglobal.org/vocab/caliper/v1/action#Hid"
      REVIEWED = "http://purl.imsglobal.org/vocab/caliper/v1/action#Reviewed"
      SHOWED = "http://purl.imsglobal.org/vocab/caliper/v1/action#Showed"
      STARTED = "http://purl.imsglobal.org/vocab/caliper/v1/action#Started"
      SUBMITTED = "http://purl.imsglobal.org/vocab/caliper/v1/action#Submitted"
      NAVIGATED_TO = "http://purl.imsglobal.org/vocab/caliper/v1/action#NavigatedTo"
    end

    class AssignableProfile < Caliper::Profiles::Profile

      attr_accessor :key, # String
        :lookup # hash of AssignableActions

      # whether object if of type DigitalResource
      def validate_object(object)
        if (object.is_a? DigitalResource)
          return object
        else
          fail 'Object must e of type DigitalResource'
        end
      end

      # whether target is of type Frame
      def validate_target(target)
        if (target is_a? frame)
          return target
        else
          fail 'Target must be of type Frame'
        end
      end
    end

  end
end