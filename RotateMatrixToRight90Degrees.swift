//===================     ROTATE MATRIX 90 degrees      =========================
var matrix = [
    [1,2,3,4],
    [5,6,7,8],
    [9,10,11,12],
    [13,14,15,16],
]


func rotateMatriz(size N: Int, matrix: [[Int]]) -> [[Int]]{
    var m = matrix

    for i in 0..<(N/2) {
        for j in i ..< (N - i - 1) {

            let tempValue = m[i][j]
            m[i][j] = m[N-1-j][i]
            m[N-1-j][i] = m[N-1-i][N-1-j]
            m[N-1-i][N-1-j] = m[j][N-1-i];
            m[j][N-1-i] = tempValue
        }
    }

    return m
}

func printMatrix(n: Int, matrix: [[Int]]){
    for i in 0...n-1 {
        var line = ""
        for j in 0...n-1 {
            line.append("\(matrix[i][j]),")
        }
        print(line)
    }
}


let mtx = rotateMatriz(size: 4, matrix: matrix)
printMatrix(n: 4, matrix: mtx)