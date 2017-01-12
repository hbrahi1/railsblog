module ArticlesHelper
	#helper for articles' controller/views ONLY
	def divide(a,b)
		return (a.to_f / b.to_f).to_f
	end
end
