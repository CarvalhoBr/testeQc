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
      select sum(qa.times_accessed)as times_accessed, q.*
	    from questions as q 
	    inner join question_accesses as qa on q.id = qa.questions_id
      where (qa.date > (date 'Jul 27 2020' - interval '#{period}' ))
      group by q.id
      order by times_accessed desc
		")
		
	end

	def self.daily_accessed_disciplines
		self.find_by_sql("
			select sum(q.daily_access) as total_daily_access, q.discipline
			from questions as q
			group by q.discipline
			order by total_daily_access
		")
	end

end
