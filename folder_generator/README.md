This script will create a folder for every student in a cohort. It pulls from the Rooster API and generates a folder for each student with their name as the folder name.

To setup, first edit `folder_generator` to add the Turing Rooster API consumption key.

If you do not have a key, contact `mike@turing.io` for a key.

Copy `folder_generator` into root of directory where you wish to use it.

Type `chmod 755 folder_generator` to ensure it has the proper permissions.

To run file, type `./folder_generator <COHORT>`, for example, `/folder_generator 1811-b` will work.
