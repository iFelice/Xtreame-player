/**
 * Lettura di un pacchetto .ipk webOS.
 *
 * `.ipk` è un archivio `ar` in stile Debian (member `debian-binary`,
 * `control.tar.gz`, `data.tar.gz`), non un semplice tar.gz: per controllare
 * cosa finisce davvero dentro l'app installata serve questo piccolo parser,
 * che non aggiunge dipendenze al progetto.
 */
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { execFileSync } from 'node:child_process';

const AR_MAGIC = '!<arch>\n';

/** Map of member name → Buffer for an `ar` archive; null when it is not one. */
export function readArMembers(ipkPath) {
  const buffer = fs.readFileSync(ipkPath);
  if (buffer.subarray(0, AR_MAGIC.length).toString('binary') !== AR_MAGIC) return null;

  const members = new Map();
  let offset = AR_MAGIC.length;
  while (offset + 60 <= buffer.length) {
    const header = buffer.subarray(offset, offset + 60).toString('ascii');
    const name = header.slice(0, 16).trim().replace(/\/+$/, '');
    const size = Number.parseInt(header.slice(48, 58).trim(), 10);
    if (!name || !Number.isFinite(size) || size < 0) break;
    const start = offset + 60;
    members.set(name, buffer.subarray(start, start + size));
    offset = start + size + (size % 2); // ar pads members to an even length
  }
  return members;
}

/**
 * Relative paths inside the app payload (`data.tar.gz`). The listing is
 * obtained with the system `tar`, which is enough for the packaging guard:
 * the goal is to see whether forbidden files slipped into the package.
 */
export function listIpkFiles(ipkPath) {
  const members = readArMembers(ipkPath);
  if (!members) {
    // Older/alternative layouts are plain tar archives.
    return runTarList(ipkPath);
  }
  const payload = members.get('data.tar.gz') ?? members.get('data.tar');
  if (!payload) throw new Error('pacchetto senza data.tar.gz: struttura .ipk non riconosciuta');

  const temporary = path.join(fs.mkdtempSync(path.join(os.tmpdir(), 'fvp-ipk-')), 'data.tar.gz');
  try {
    fs.writeFileSync(temporary, payload);
    return runTarList(temporary);
  } finally {
    fs.rmSync(path.dirname(temporary), { recursive: true, force: true });
  }
}

function runTarList(file) {
  const output = execFileSync('tar', ['tzf', file], { encoding: 'utf8' });
  return output
    .split('\n')
    .map((line) => line.replace(/^\.\//, '').trim())
    .filter(Boolean);
}
