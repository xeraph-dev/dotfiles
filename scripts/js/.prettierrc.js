/** @type {import('prettier').Options} */
module.exports = {
  plugins: [require.resolve('prettier-plugin-astro')],
  overrides: [
    {
      files: '*.astro',
      options: {
        parser: 'astro',
      },
    },
  ],
  astroAllowShorthand: true,
  arrowParens: "avoid",
  bracketSameLine: false,
  bracketSpacing: true,
  endOfLine: "lf",
  jsxSingleQuote: false,
  printWidth: 80,
  quoteProps: "as-needed",
  semi: false,
  useTabs: false,
  tabWidth: 2,
  trailingComma: "all",
  singleQuote: true,
};