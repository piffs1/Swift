// mapValues. Работа с values словаря

let mappedPrikol = ["Nikita" : 25, "Boriska": 125]
let newMappedPrikol = mappedPrikol.mapValues{ $0 + 1}
print(newMappedPrikol) // ["Boriska": 126, "Nikita": 26]
