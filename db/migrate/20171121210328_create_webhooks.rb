class CreateWebhooks < ActiveRecord::Migration[5.1]
  def change
    create_table :webhooks do |t|
      t.string :webhookId
      t.string :from
      t.string :to
      t.text :body
      t.datetime :received
    end
  end
end
