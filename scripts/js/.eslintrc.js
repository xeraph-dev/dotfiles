/** @type {import('eslint').Linter.Config} */
module.exports = {
  env: {
    browser: true,
    node: true,
    es6: true,
  },
  extends: ['standard', 'prettier'],
  plugins: [
    'prettier',
    'simple-import-sort',
    'import',
    'unused-imports',
    'sort-destructure-keys',
  ],
  rules: {
    'prettier/prettier': 'error',
    'arrow-body-style': ['error', 'as-needed'],
    'prefer-arrow-callback': 'off',
    'simple-import-sort/imports': 'error',
    'simple-import-sort/exports': 'error',
    'import/first': 'error',
    'import/newline-after-import': 'error',
    'import/no-duplicates': 'error',
    'sort-destructure-keys/sort-destructure-keys': [
      'error',
      { caseSensitive: true },
    ],
    'unused-imports/no-unused-imports': 'error',
    'unused-imports/no-unused-vars': [
      'warn',
      {
        vars: 'all',
        varsIgnorePattern: '^_',
        args: 'after-used',
        argsIgnorePattern: '^_',
      },
    ],
  },
  overrides: [
    {
      files: ['*.astro'],
      plugins: ['astro'],
      env: {
        'astro/astro': true,
      },
      parser: 'astro-eslint-parser',
      parserOptions: {
        parser: '@typescript-eslint/parser',
        extraFileExtensions: ['.astro'],
        sourceType: 'module',
      },
      rules: {
        'astro/no-conflict-set-directives': 'error',
        'astro/no-unused-define-vars-in-style': 'error',
        'simple-import-sort/imports': 'off',
      },
    },
    {
      files: ['*.ts'],
      plugins: ['@typescript-eslint', 'typescript-sort-keys'],
      extends: ['plugin:@typescript-eslint/recommended'],
      parser: '@typescript-eslint/parser',
      parserOptions: {
        ecmaVersion: 'latest',
        sourceType: 'module',
      },
      rules: {
        '@typescript-eslint/no-unused-vars': 'off',
        'typescript-sort-keys/interface': 'error',
        'typescript-sort-keys/string-enum': 'error',
      },
    },
  ],
}
