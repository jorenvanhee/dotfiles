return {
  'saghen/blink.cmp',
  version = '1.*',
  opts = {
    signature = {
      enabled = true,
      window = {
        show_documentation = true,
      },
    },
    keymap = {
      ['<c-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
      ['<c-f>'] = { 'select_and_accept' },

      ['<c-p>'] = { 'select_prev', 'fallback_to_mappings' },
      ['<c-n>'] = { 'select_next', 'fallback_to_mappings' },

      ['<c-u>'] = { 'scroll_documentation_up', 'fallback' },
      ['<c-d>'] = { 'scroll_documentation_down', 'fallback' },

      ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
    },
  }
}
