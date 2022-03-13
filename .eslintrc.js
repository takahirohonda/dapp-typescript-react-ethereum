module.exports = {
  root: true,
  env: {
    node: true,
  },
  extends: ['eslint-config-mdh-typescript-react'],
  parserOptions: {
    project: './tsconfig.json',
    ecmaVersion: 12,
    sourceType: 'module',
  },
  overrides: [{ files: ['**/*.ts'] }],
  rules: {},
}
