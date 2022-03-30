module Statement

  def print_statement(transactions)
    print_top_line
    transaction_list(@transactions)
  end
  
  def print_top_line()
    puts "date || credit || debit || balance"
  end

  def transaction_list(transactions)
    transactions.each do |transaction|
      dep_or_with(transaction)
    end
  end

  def dep_or_with(transaction)
    if transaction[:type] == :deposit
      puts "#{transaction[:date]} || #{transaction[:amount]} || || #{transaction[:balance]}"
    elsif transaction[:type] == :withdraw
      puts "#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"
    end
  end

end