# CodiceFiscale.js
Fork of [CodiceFiscaleJS](https://github.com/lucavandro/CodiceFiscaleJS) repository.

## Publishing on Nexus Repository

Steps to publish:

1. Install dependencies:

```bash
npm install
```

2. Update the version in `package.json` to a new, unused version.

3. Login to your Nexus repository:

```bash
npm login --registry=***
```

4. Publish the package:

```bash
npm publish --registry=***
```

## Updating Library Data

To update the comuni and province JavaScript files with the latest data:

1. Use the provided SQL queries in the following files:

   * `update-comuni.sql` → generates the list of cities.
   * `update-province.sql` → generates the list of provinces.

2. Execute the queries manually in your Oracle DBMS.

3. Export the query result in `.csv` format.

4. Open the exported CSV in a spreadsheet editor.

5. Copy all cells except the header row.

6. Paste the copied data directly into the corresponding JS file:

   * `lista-comuni.js` → ensure the array syntax `export const COMUNI = [ ... ];` remains intact.
   * `lista-province.js` → ensure the object syntax `export const PROVINCE = { ... };` remains intact.

7. Save the `.js` files. They are now ready to be used by the library.
