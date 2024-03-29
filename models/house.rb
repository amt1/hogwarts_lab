require_relative('../db/sql_runner.rb')

class House

attr_reader :name, :logo_url, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @logo_url = options['logo_url']
  end

  def save
    sql='INSERT INTO houses (name, logo_url) VALUES ($1, $2) RETURNING id;'
    values=[@name, @logo_url]
    @id = SqlRunner.run(sql,values).first['id'].to_i
  end

  def self.list_all
    sql = 'SELECT * FROM houses;'
    return SqlRunner.run(sql).map { |house| House.new(house)  }
  end

  def self.find_by_id(id)
    sql = 'SELECT * FROM houses WHERE id = $1;'
    values = [id]
    house = SqlRunner.run(sql, values).first
    return House.new(house) if house != nil
  end
  
end # end class
