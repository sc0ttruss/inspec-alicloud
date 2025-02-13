# frozen_string_literal: true

title 'Test AliCloud ActionTrails in bulk'

alicloud_action_trail_name = input(:alicloud_action_trail_name, value: '', description: 'Action trail name')

control 'alicloud-actiontrails-1.0' do
  impact 1.0
  title 'Ensure AlicCloud Action Trail plural resource has the correct properties.'

  describe alicloud_actiontrail_trails do
    it { should exist }
    its('count') { should be >= 1 }
    its('names') { should include alicloud_action_trail_name }
  end
end
