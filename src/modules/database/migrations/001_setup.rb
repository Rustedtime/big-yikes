# set up the table
Sequel.migration do
    up do
        create_table(:users) do
            primary_key :id
            String :user_id
            Integer :yikes, default: 0
            Integer :woke, default: 0
        end
    end

    down do
        drop_table(:users)
    end
end