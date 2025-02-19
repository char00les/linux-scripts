1. Reading a CSV File Line by Line

If you have a CSV file (data.csv) with the following content:

Name,Age,Location
Alice,25,New York
Bob,30,San Francisco
Charlie,28,Los Angeles

You can read it line by line using while read:

#!/bin/bash

# Set Internal Field Separator (IFS) to comma
IFS=","

# Read CSV line by line
while read -r name age location; do
    echo "Name: $name, Age: $age, Location: $location"
done < data.csv

    Note: If the CSV has a header row, you can skip it using tail -n +2 data.csv.

2. Extracting a Specific Column (cut)

If you want to extract just the Name column (1st column):

cut -d',' -f1 data.csv

    -d',' specifies the delimiter as a comma, and -f1 selects the first column.

3. Filtering Data (awk)
Example: Show people older than 26

awk -F',' '$2 > 26 { print $1, $2 }' data.csv

    -F',' sets the field separator to a comma.
    $2 > 26 filters rows where the second column (Age) is greater than 26.
    { print $1, $2 } prints the Name and Age.

4. Replacing a Value (sed)

If you want to change "San Francisco" to "SF":

sed 's/San Francisco/SF/g' data.csv

5. Sorting Data (sort)

To sort the CSV by the Age column:

sort -t',' -k2 -n data.csv

    -t',' sets the delimiter to a comma.
    -k2 sorts by the second column (Age).
    -n enables numeric sorting.

6. Counting Entries (wc)

To count the number of lines (excluding the header):

tail -n +2 data.csv | wc -l

7. Converting CSV to JSON (awk)

If you want to convert data.csv to JSON:

awk -F',' 'NR>1 { printf("{\"Name\":\"%s\", \"Age\":%s, \"Location\":\"%s\"}\n", $1, $2, $3) }' data.csv

These are some fundamental ways to work with CSV files in Bash. For more complex operations, consider using Python with pandas. Let me know if you need additional details!
