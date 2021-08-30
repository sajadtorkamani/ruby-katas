# frozen_string_literal: true

require 'byebug'
require_relative 'get_featured_projects'

def get_fake_projects(npopular, nunpopular)
  popular = (1..npopular).map { |x|
    { name: "Popular Project #{x}", nreceiving_from: 7, receiving: 10 }
  }

  unpopular = (1..nunpopular).map { |x|
    { name: "Unpopular Project #{x}", nreceiving_from: 3, receiving: 4 }
  }

  (popular + unpopular).shuffle
end

def get_featured_project_counts(projects)
  featured_projects = get_featured_projects(projects)
  popular, unpopular = featured_projects.partition { |x| x[:nreceiving_from] > 5 }

  [popular.count, unpopular.count]
end

describe 'get_featured_projects' do
  it "should choose more popular than unpopular" do
    projects = get_fake_projects(10, 5)

    npopular, nunpopular = get_featured_project_counts(projects)
    expect(npopular).to eq 7
    expect(nunpopular).to eq 3
  end

  it "should deal with zero popular projects" do
    projects = get_fake_projects(0, 10)

    npopular, nunpopular = get_featured_project_counts(projects)
    expect(npopular).to eq 0
    expect(nunpopular).to eq 10
  end

  it "should deal with zero unpopular projects" do
    projects = get_fake_projects(10, 0)

    npopular, nunpopular = get_featured_project_counts(projects)
    expect(npopular).to eq 10
    expect(nunpopular).to eq 0
  end

  it "should deal with some but too few popular projects" do
    projects = get_fake_projects(4, 10)

    npopular, nunpopular = get_featured_project_counts(projects)
    expect(npopular).to eq 4
    expect(nunpopular).to eq 6
  end

  it 'returns all project if there are less than 10 in total' do
    projects = get_fake_projects(4, 3)
    npopular, nunpopular = get_featured_project_counts(projects)
    expect(npopular).to eq 4
    expect(nunpopular).to eq 3
  end
end
