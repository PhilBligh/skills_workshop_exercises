class Garage
  def initialize
    @cars = [
      {registration_plate: 'BD51 SMR', make: 'honda'},
      {registration_plate: 'LD10 RXS', make: 'ford'},
      {registration_plate: 'SE60 TSW', make: 'honda'}
    ]
  end

  def cars
    @cars
  end

  def add(car)
    @cars.push(car)
  end

  def find(reg)
    @cars.each {|car|
      if car[:registration_plate] == reg
        return car
      end
    }
  end

  def remove(reg)
    @cars.each {|car|
      if car[:registration_plate] == reg
        @cars.delete(car)
      end
    }
  end

  def all_of_make(make)
    make_arr = []
    @cars.each {|car|
      if car[:make] == make
        make_arr << car
      end
    }
    make_arr
  end

end
garage = Garage.new
garage.cars
