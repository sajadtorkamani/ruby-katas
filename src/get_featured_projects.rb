# frozen_string_literal: true

class FeaturedProjects
  attr_reader :projects

  COUNT = 10
  DEFAULT_POPULAR_COUNT = 7
  DEFAULT_UNPOPULAR_COUNT = 3
  POPULARITY_THRESHOLD = 5

  def self.get(projects)
    new(projects).call
  end

  def initialize(projects)
    @projects = projects
    @popular_projects = popular_projects
    @unpopular_projects = unpopular_projects
  end

  def call
    popular = @popular_projects.first(popular_count)
    unpopular = @unpopular_projects.first(unpopular_count)
    [popular, unpopular].flatten.shuffle
  end

  def popular_projects
    projects.select { |project| project[:nreceiving_from] > POPULARITY_THRESHOLD }
  end

  def unpopular_projects
    projects.select { |project| project[:nreceiving_from] <= POPULARITY_THRESHOLD }
  end

  def popular_count
    return COUNT - @unpopular_projects.count if @unpopular_projects.count < DEFAULT_UNPOPULAR_COUNT

    DEFAULT_POPULAR_COUNT
  end

  def unpopular_count
    return COUNT - @popular_projects.count if @popular_projects.count < DEFAULT_POPULAR_COUNT

    DEFAULT_UNPOPULAR_COUNT
  end
end

def get_featured_projects(projects)
  FeaturedProjects.get(projects)
end
