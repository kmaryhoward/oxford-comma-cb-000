def oxford_comma(array)
  case 
    when array.length == 1
      array.join
    when array.length == 2
      array.join(" and ")
    when array.length == 3
      b = array.slice(-1).insert(0, ", and ")
      a = array.slice(0, 2).join(", ")
      a << b
    when array.length > 3
      b = array.slice(-1).insert(0, ", and ")
      c = array.length - 1
      d = array.slice(0, c).join(", ")
      d << b
    end
end