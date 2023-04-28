# Mongoose Schema Generator

This script creates a Mongoose schema in a Node.js project based on user input. The schema is created based on the name of the schema and the properties that the user specifies. The script then generates a JavaScript file with the Mongoose schema definition that can be used in a Node.js application.

## Usage

1. Open a terminal window and navigate to the directory where you want to create the Mongoose schema file.
2. Run the script with the command `sh schema_generator.sh `.
3. When prompted, enter the name of the schema. This will be the name of the js file.
4. Enter the properties of the schema, separated by space

## Example

```
sh schema_generator.sh id name
Enter the schema name: User

```

This will generate a file called `User.js` with the following content:

```
const { Schema } = require('mongoose');

const UserSchema = new Schema({
  id: {
    type:,
    required:,
  },
  name: {
    type:,
    required:,
  },
});

module.exports = UserSchema;
```

## Credits

This script was written by Bruno Vidigal
