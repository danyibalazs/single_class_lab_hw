require('minitest/autorun')
require('minitest/reporters')
require_relative('../student_class')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudentClass < MiniTest::Test

  def setup
    @student = Student.new("Balazs", "E37" )
  end

  def test_get_name
    assert_equal("Balazs", @student.get_name())
  end

  def test_get_cohort
    assert_equal("E37", @student.get_cohort())
  end

  def test_set_name
    @student.set_name("Bob")
    assert_equal("Bob", @student.get_name())
  end

  def test_set_cohort
    @student.set_cohort("E38")
    assert_equal("E38", @student.get_cohort())
  end

  def test_talk
    assert_equal("I can talk!", @student.talk())
  end
end
