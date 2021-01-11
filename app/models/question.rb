class Question < ApplicationRecord

	def self.most_accessed(period)

		case period
		when 'week'
			period = '7 day'
		when 'month'
			period = '1 month'
		when 'year'
			period = '1 year'
		else
			return []
		end

		self.find_by_sql("
      select sum(qa.times_accessed)as t_accessed, q.*
	    from questions as q 
	    inner join question_accesses as qa on q.id = qa.questions_id
      where (qa.date > (date 'Jul 27 2020' - interval '#{period}' ))
      group by q.id
      order by t_accessed desc
		")
		
	end

end
