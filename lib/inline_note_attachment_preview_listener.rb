class InlineNoteAttachmentPreviewListener < Redmine::Hook::ViewListener

  render_on :view_issues_show_description_bottom, :partial => 'inline_note_attachment_preview/issues_show_description_bottom'
  render_on :view_issues_history_journal_bottom, :partial => 'inline_note_attachment_preview/issues_history_journal_bottom'

  def view_layouts_base_html_head(context={})
    stylesheet_link_tag("inline_note_attachment_preview", :plugin => "redmine_inline_note_attachment_preview_plugin")
  end
end

