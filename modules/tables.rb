module Tables
    require 'tty-table'

    def display_table(data_array)
        header = ["Question", "Response"] 
        rows = data_array
        
        table = TTY::Table.new header, rows
        table.render(:unicode, resize: true, padding: [0,1,0,0])
    end
end