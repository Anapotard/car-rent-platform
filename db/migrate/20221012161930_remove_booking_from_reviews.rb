class RemoveBookingFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_reference :reviews, :booking, null: false, foreign_key: true
  end
end
