import { describe, it, expect } from 'vitest';

describe('something truthy and falsy', () => {
  it('true to be true', () => {
    expect(true).toBe(true);
    expect(true).toBeTruthy();
  });

  it('false to be falsy', () => {
    expect(false).toBe(false);
    expect(false).toBeFalsy();
  });
});
