module Helena
  class VersionPublisher
    def self.publish(version)
      copied_version = version.dup
      copied_version.version = newest_version_of(version.survey) + 1
      copied_version
    end

    def self.newest_version_of(survey)
      survey.newest_version.version
    end
  end
end
