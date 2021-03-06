class CreateInitialModels < ActiveRecord::Migration
  def change
    create_table :product do |t|
      t.string :name

      t.timestamps
    end

    create_table :customers do |t|
      t.string :name

      t.references :product, index: true

      t.timestamps
    end

    create_table :features do |t|
      t.string :name

      t.references :product, index: true

      t.timestamps
    end

    create_table :projects do |t|
      t.string :name

      t.references :product, index: true

      t.timestamps
    end

    create_table :stories do |t|
      t.text :body

      t.references :feature, index: true

      t.timestamps
    end

    create_table :tasks do |t|
      t.text :body

      t.references :story, index: true

      t.timestamps
    end

    create_table :customer_features do |t|
      t.references :customer, index: true
      t.references :feature, index: true

      t.timestamps
    end

    create_table :project_features do |t|
      t.references :project, index: true
      t.references :feature, index: true

      t.timestamps
    end

    create_table :customer_stories do |t|
      t.references :customer, index: true
      t.references :story, index: true

      t.timestamps
    end

    create_table :customer_tasks do |t|
      t.references :customer, index: true
      t.references :task, index: true

      t.timestamps
    end

    create_table :project_tasks do |t|
      t.references :project, index: true
      t.references :task, index: true

      t.timestamps
    end
  end
end
