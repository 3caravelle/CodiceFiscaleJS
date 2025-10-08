const fs = require('fs');
const path = require('path');

const filesToRename = [
  { src: 'codice.fiscale.var.js', dest: 'codice-fiscale-var.js' },
  { src: 'codice.fiscale.commonjs2.js', dest: 'codice-fiscale-commonjs2.js' },
  { src: 'codice.fiscale.umd.js', dest: 'codice-fiscale-umd.js' },
  { src: 'codice.fiscale.amd.js', dest: 'codice-fiscale-amd.js' },
];

filesToRename.forEach(({ src, dest }) => {
  const srcPath = path.join(__dirname, 'dist', src);
  const destPath = path.join(__dirname, 'dist', dest);

  if (fs.existsSync(srcPath)) {
    fs.renameSync(srcPath, destPath);
    console.log(`Renamed ${src} → ${dest}`);
  } else {
    console.warn(`File not found: ${src}`);
  }
});
console.log('Renaming completed.');