# frozen_string_literal: true

class Comfy::Cms::Revision < ApplicationRecord

  self.table_name = "comfy_cms_revisions"

  serialize :data, coder: Psych # AT 2025, coder required

  # -- Relationships --------------------------------------------------------
  belongs_to :record, polymorphic: true

end
