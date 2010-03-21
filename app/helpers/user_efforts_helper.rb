module UserEffortsHelper

  def activity_collection_for_select_options
    activities = TimeEntryActivity.all
    collection = []
    collection << [ "--- #{l(:actionview_instancetag_blank_option)} ---", '' ] unless activities.detect(&:is_default)
    activities.each { |a| collection << [a.name, a.id] }
    collection
  end

end
