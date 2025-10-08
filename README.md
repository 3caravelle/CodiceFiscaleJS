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
