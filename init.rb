require 'redmine'

ActionDispatch::Reloader.to_prepare do
  require_dependency 'redmine_multiprojects_issue/hooks'
  require_dependency 'redmine_multiprojects_issue/issue_patch'
  require_dependency 'redmine_multiprojects_issue/issues_helper_patch'
  require_dependency 'redmine_multiprojects_issue/issues_controller_patch'
  require_dependency 'redmine_multiprojects_issue/issue_query_patch'
  require_dependency 'redmine_multiprojects_issue/queries_helper_patch'
end

Redmine::Plugin.register :redmine_multiprojects_issue do
  name 'Redmine Multiple Projects per Issue plugin'
  author 'Vincent ROBERT'
  description 'This plugin for Redmine allows more than one project per issue.'
  version '3.4.5'
  url 'https://github.com/nanego/redmine_multiprojects_issue'
  author_url 'mailto:contact@vincent-robert.com'
  requires_redmine_plugin :redmine_base_stimulusjs, :version_or_higher => '1.0.1'
  settings :default => { 'custom_fields' => []},
           :partial => 'settings/redmine_plugin_multiprojects_issue_settings'
end
