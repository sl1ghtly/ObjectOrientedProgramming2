import java.util.Collections;

ArrayList<Integer> list = new ArrayList<Integer>();
list.add(10);
list.add(6);
list.add(8);
list.add(4);

//Print list
println("Unsorted List: " + list);

Collections.sort(list);
println("Sorted List: " + list);
