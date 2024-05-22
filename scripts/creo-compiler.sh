#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 source_file output_file"
    exit 1
fi

echo "Compiling $1 to $2"
touch "$2"
echo -e "#!/bin/bash\n# Mock compiled output\ncat $1" > "$2"
chmod +x "$2"
