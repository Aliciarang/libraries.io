class AddIndexToRepositoryMaintenanceStats < ActiveRecord::Migration[5.2]
  def change
    add_index :repository_maintenance_stats,
              [:repository_id, :category],
              unique: true,
              name: "index_repository_maintenance_stats_on_repository_and_category"
  end
end
