import { describe, expect, it } from 'vitest';
import { createAccessAuth, requireProductionToken } from './auth';

describe('access auth', () => {
  it('validates signed, expired, tampered and absent cookies', () => { const a=createAccessAuth('a'.repeat(24),true); const c=a.issue(1000); expect(a.verify(c,1001)).toBe(true); expect(a.verify(c,31*86400000)).toBe(false); expect(a.verify(c+'x',1001)).toBe(false); expect(a.verify(undefined)).toBe(false); });
  it('refuses production startup without a strong token', () => { expect(()=>requireProductionToken({NODE_ENV:'production'})).toThrow(/APP_ACCESS_TOKEN/); expect(()=>requireProductionToken({NODE_ENV:'production',APP_ACCESS_TOKEN:'short'})).toThrow(); expect(()=>requireProductionToken({NODE_ENV:'production',APP_ACCESS_TOKEN:'x'.repeat(24)})).not.toThrow(); expect(()=>requireProductionToken({NODE_ENV:'development'})).not.toThrow(); });
  it('rate limits unlock after five failures', () => { const a=createAccessAuth('a'.repeat(24),false); const req:any={ip:'1.2.3.4',socket:{},body:{token:'bad'}}; let status=0; const res:any={status(n:number){status=n;return this;},json(){return this;},setHeader(){}}; for(let i=0;i<5;i++) a.unlock(req,res); expect(status).toBe(401); a.unlock(req,res); expect(status).toBe(429); });
});
