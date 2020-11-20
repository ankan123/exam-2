class Issue < ApplicationRecord
  belongs_to :employee
  belongs_to :item

  scope :stock_quantity_available, -> (issue_date,return_date,item_id){
    where("item_id = :id AND (issue_date < :issue_date AND return_date > :issue_date) OR (issue_date < :return_date AND return_date > :return_date) OR (issue_date >= :issue_date AND return_date <= :return_date)",{ issue_date: issue_date, return_date: return_date, id: item_id }).collect(&:quantity).sum
  }

end
