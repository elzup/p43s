import { describe, expect, it } from 'vitest'
import { isP43s } from '../lib/esm/index.js'

describe('isP43s', () => {
  it('should return true for valid p43s string (45 chars, starts with p, ends with s)', () => {
    // 45 chars total: p + 43 middle chars + s
    expect(isP43s('p0123456789012345678901234567890123456789012s')).toBe(true)
  })

  it('should return false for wrong length', () => {
    expect(isP43s('ps')).toBe(false)
    expect(isP43s('hello')).toBe(false)
  })

  it('should return false for wrong start character', () => {
    expect(isP43s('x0123456789012345678901234567890123456789012s')).toBe(false)
  })

  it('should return false for wrong end character', () => {
    expect(isP43s('p0123456789012345678901234567890123456789012x')).toBe(false)
  })
})
