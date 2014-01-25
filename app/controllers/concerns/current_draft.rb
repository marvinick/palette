module CurrentDraft
  extend ActiveSupport::Concern

  private

    def set_draft
      @draft = Draft.find(session[:draft_id])
    rescue ActiveRecord::RecordNotFound
      @draft = Draft.create
      session[:draft_id] = @draft.id
    end
end