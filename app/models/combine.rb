class Combine < ApplicationRecord
	#acts_as_copy_target
	def self.ransackable_attributes(auth_object = nil)
		["bench", "broad_jump", "cfb_id", "cone", "created_at", "draft_ovr", "draft_round", "draft_team", "draft_year", "forty", "ht", "id", "pfr_id", "player_name", "pos", "school", "season", "shuttle", "updated_at", "vertical", "wt"]
	end

end
