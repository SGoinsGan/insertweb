class Search < ActiveRecord::Base

  def inserts
    @inserts ||= find_inserts
end

private

  def find_inserts
    inserts = inserts.where(pub: pub) if pub.prents?
	inserts = inserts.where("fromdate >= ?", fromdate, fromdate) if fromdate.present?
	inserts = inserts.where("todate <= ?", todate) if todate.present?
	inserts
	end
	end
	
