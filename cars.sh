#! /bin/bash
# cars.sh
# Sofia Bejerano

options=("Option 1" "Option 2" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "Please input the year: "
                read year
                echo "Please input the make: "
                read make
                echo "Please input the model: "
                read model
                echo "$year:$make:$model" >> My_old_cars
            ;;
        "Option 2")
            sort My_old_cars
            read -r  My_old_cars
            ;;
        "Quit")
           echo "Goodbye!"
           break
            ;;
    esac
done
