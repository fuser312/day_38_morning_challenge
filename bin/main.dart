// Challenge: Find all permutations
// Given a collection of *distinct* integers, return all possible permutations.
/// Example:
//  Input: [1,2,3]
//  Output:
//  [
//    [1,2,3],
//    [1,3,2],
//    [2,1,3],
//    [2,3,1],
//    [3,1,2],
//    [3,2,1]
//  ]

List<List<int>> permuate(List<int> inputList){

  List <List<int>>permutations = [];
  if(inputList.length ==1){
  permutations.add(inputList);
  return permutations;
  }
  
  for(int i = 0; i< inputList.length; i++){
    List <int> tempList = List.from(inputList);
    tempList.removeAt(i);
    List <List<int>> otherPermutation = permuate(tempList);
    for (List <int> list in otherPermutation){
      list.insert(0, inputList[i]);
      permutations.add(list);
    }
    
  }
  return permutations;
 }
main() {
  print(permuate([1,2,3,4]).length);
  print("................");
  print(permuate([1,2,3,4]));
}
