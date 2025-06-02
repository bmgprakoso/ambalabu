//  @ts-check

import { tanstackConfig } from '@tanstack/eslint-config'
import { globalIgnores } from 'eslint/config'

export default [
  ...tanstackConfig,

  // Ignore configuration files
  globalIgnores(['eslint.config.js', 'prettier.config.js', 'vite.config.js']),
]
