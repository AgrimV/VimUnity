# VimUnity

## Usage
1. Clone the script using
`git clone https://github.com/AgrimV/VimUnity/`
    
2. Open the directory VimUnity using
`cd VimUnity/``` or ```cd directory_name/`

3. Move the *unity.sh* file to your home directory
`mv unity.sh ~/` or `mv unity.sh /home/user/`

4. Set the `$UNITYROJECTPATH`  in your .bashrc

    The script automatically sets it in case the variable is not present.

5. (Optional)

    Add the following line to your .bashrc : `alias viu=./unity.sh`

    You may use any string in place of **viu**. This will be used to call the script from the terminal.

6. The syntax to open Unity C# scripts in Vim is :

    `viu <project_name> [options] <files_to_open>` or,
    
    `~/unity.sh <project_name> [options] <files_to_open>`
    
    
## What It Does
- It opens C# Scripts from the directory `$UNITYPROJECTPATH/project_name/Assets/Scripts/` as individual tabs in Vim.
- The terminal stays in the `project_name` directory in order to load .sln files for autocompletion in C#, if available.
- It can open a new C# Script if specified at the aforementioned path.

## Options
### -a
Tells the script to open all C# Scripts found in the `Assets/Scripts/` directory of the project along with the new files mentioned following it.
- The script opens all files regardless if no other argument is provided after the `project_name`.
- If a file name is provided, it will only open/create the file(s) depending on its existence.
