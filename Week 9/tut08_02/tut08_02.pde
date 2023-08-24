import java.util.Collections;

ArrayList<String> list = new ArrayList<String>();
list.add(new String("bob"));
list.add(new String("alice"));
list.add(new String("mary"));
list.add(new String("john"));

//Print list
println("Unsorted List: " + list);

Collections.sort(list);

//Print list
println("Sorted List: " + list);