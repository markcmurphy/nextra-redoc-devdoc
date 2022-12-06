echo "hello"
cd ./dist/versions
function recursive_for_loop {
    for f in *;  do
        echo $f
        if [ -d $f -a ! -h $f ];
        then
            cd -- "$f";
            echo "Doing something in folder $f";

            # use recursion to navigate the entire tree
            recursive_for_loop;
            cd ..;
        fi;
    done;
};
recursive_for_loop
