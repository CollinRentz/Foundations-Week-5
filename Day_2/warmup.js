function createPhoneNumber(numbers){
    let first = ""
    let second = ""
    let third = ""
    for(var i=0;i<numbers.length;i++){
      if(i<3){
        first.concat(numbers[i].toString())
      } else if(3<i<6){
        second.concat(numbers[i].toString())
      } else if(i>=6){
        third.concat(numbers[i].toString())
      }
    }
    return `(${first} ${second}-${third}`
}

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])