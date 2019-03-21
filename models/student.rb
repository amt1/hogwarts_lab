require_relative('../db/sql_runner.rb')

class Student

attr_reader :first_name, :last_name, :age, :id, :house_id, :house

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    # @house = options['house']
    @house_id = options['house_id']
    @house = get_house_name
    @age = options['age'].to_i
  end

  def get_house_name
    sql='SELECT name FROM houses WHERE id = $1;'
    values=[@house_id]
    @house=SqlRunner.run(sql,values).first['name']
  end

  def save
    sql = 'INSERT INTO students (first_name, last_name, house_id, age)
    VALUES ($1, $2, $3, $4) RETURNING id;'
    values = [@first_name, @last_name, @house_id, @age]
    @id = SqlRunner.run(sql, values).first['id'].to_i
  end

  def self.list_all
    sql = 'SELECT * FROM students;'
    return SqlRunner.run(sql).map { |student| Student.new(student)  }
  end

  def self.find_by_id(id)
    sql = 'SELECT * FROM students WHERE id = $1;'
    values = [id]
    student = SqlRunner.run(sql, values).first
    return Student.new(student) if student != nil
  end

end # end class
