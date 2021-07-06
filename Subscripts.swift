// Subsc 1
struct TimesTable {
   let multiplier: Int
   subscript(index: Int) -> Int {
      return multiplier * index
   }
}
let threeTimesTable = TimesTable(multiplier: 3)
print(threeTimesTable[5])

// Subsc 2
struct Matrix {
  let rows: Int, columns: Int
  var grid: [Double]
  init(rows: Int, columns: Int) {
     self.rows = rows
     self.columns = columns
     grid = Array(repeating: 0.0, count: rows * columns)
  }
  subscript(row: Int, column: Int) -> Double {
     get {
        return grid[(row * columns) + column]
     }
     set {
        grid[(row * columns) + column] = newValue
     }
  }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
print(matrix[0, 1])
print(matrix[1, 0])


// test
struct Test {
  var num = 0
  subscript(tmp: Int) -> Int {
    return tmp*num
  }
}
var t = Test(num:8)
print(t[2])

