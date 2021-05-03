function[array]=quickSort(array)
    if length(array)<1
         return
    end
    if length(array)==1  %Base Case%
         fprintf('Base case, array=%d\n\n',array)
    end
     %Gen Case%
        n=randi([1 length(array)])%Chooses random array number%
        pivot=array(n)%Makes pivot middle of array%


        small=[array<pivot]%elements less than pivot%
        same=[array==pivot]%elements equal to pivot%
        large=[array>pivot]%elements greater than pivot%


        list1=array(small)
        list2=array(same)
        list3=array(large)


        list1=quickSort(list1)%call first array%
        list3=quickSort(list3)%call third array%
        sortedArray=[list1,list2,list3]
        array=sortedArray
        disp(array)
end