require "selectAction/version"

module SelectAction
	def self.getOptionHtml(pkId, primarySel, secondarySel, selectDetail)	
		@PSHtml = ''
		primarySel.find_each do |priItem|
			@PSHtml += '<option value="' + priItem.id.to_s
			if priItem.id.to_s == pkId
				@PSHtml += '" selected>'+ priItem[selectDetail["prDisp"]]
			else
				@PSHtml += '">'+ priItem[selectDetail["prDisp"]]
			end				
			@PSHtml += '</option>'
		end
		@SSHtml = '<option value="-1">Select</option>'
		secondarySel.find_each do |secItem|
			@SSHtml += '<option value="' + secItem.id.to_s
			@SSHtml += '">'+ secItem[selectDetail["secDisp"]]
			@SSHtml += '</option>'
		end
		@result = [@PSHtml,@SSHtml]
		return @result
	end
end