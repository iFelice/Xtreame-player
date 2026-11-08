package Q6;

import A0.O;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class r implements D {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public byte f6073G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final x f6074H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Inflater f6075I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final s f6076J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final CRC32 f6077K;

    public r(D d6) {
        q0.h(d6, "source");
        x xVar = new x(d6);
        this.f6074H = xVar;
        Inflater inflater = new Inflater(true);
        this.f6075I = inflater;
        this.f6076J = new s(xVar, inflater);
        this.f6077K = new CRC32();
    }

    public static void k(int i8, int i9, String str) throws IOException {
        if (i9 != i8) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i9), Integer.valueOf(i8)}, 3)));
        }
    }

    public final void E(long j8, j jVar, long j9) {
        y yVar = jVar.f6063G;
        q0.e(yVar);
        while (true) {
            int i8 = yVar.f6099c;
            int i9 = yVar.f6098b;
            if (j8 < i8 - i9) {
                break;
            }
            j8 -= (long) (i8 - i9);
            yVar = yVar.f6102f;
            q0.e(yVar);
        }
        while (j9 > 0) {
            int i10 = (int) (((long) yVar.f6098b) + j8);
            int iMin = (int) Math.min(yVar.f6099c - i10, j9);
            this.f6077K.update(yVar.f6097a, i10, iMin);
            j9 -= (long) iMin;
            yVar = yVar.f6102f;
            q0.e(yVar);
            j8 = 0;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f6076J.close();
    }

    @Override // Q6.D
    public final long read(j jVar, long j8) throws IOException {
        x xVar;
        long j9;
        q0.h(jVar, "sink");
        if (j8 < 0) {
            throw new IllegalArgumentException(O.z("byteCount < 0: ", j8).toString());
        }
        if (j8 == 0) {
            return 0L;
        }
        byte b8 = this.f6073G;
        CRC32 crc32 = this.f6077K;
        x xVar2 = this.f6074H;
        if (b8 == 0) {
            xVar2.U(10L);
            j jVar2 = xVar2.f6095H;
            byte bA0 = jVar2.a0(3L);
            boolean z7 = ((bA0 >> 1) & 1) == 1;
            if (z7) {
                E(0L, xVar2.f6095H, 10L);
            }
            k(8075, xVar2.readShort(), "ID1ID2");
            xVar2.b(8L);
            if (((bA0 >> 2) & 1) == 1) {
                xVar2.U(2L);
                if (z7) {
                    E(0L, xVar2.f6095H, 2L);
                }
                short s7 = jVar2.readShort();
                long j10 = ((short) (((s7 & 255) << 8) | ((s7 & 65280) >>> 8))) & 65535;
                xVar2.U(j10);
                if (z7) {
                    E(0L, xVar2.f6095H, j10);
                    j9 = j10;
                } else {
                    j9 = j10;
                }
                xVar2.b(j9);
            }
            if (((bA0 >> 3) & 1) == 1) {
                xVar = xVar2;
                long jK = xVar2.k((byte) 0, 0L, Long.MAX_VALUE);
                if (jK == -1) {
                    throw new EOFException();
                }
                if (z7) {
                    E(0L, xVar.f6095H, jK + 1);
                }
                xVar.b(jK + 1);
            } else {
                xVar = xVar2;
            }
            if (((bA0 >> 4) & 1) == 1) {
                long jK2 = xVar.k((byte) 0, 0L, Long.MAX_VALUE);
                if (jK2 == -1) {
                    throw new EOFException();
                }
                if (z7) {
                    E(0L, xVar.f6095H, jK2 + 1);
                }
                xVar.b(jK2 + 1);
            }
            if (z7) {
                xVar.U(2L);
                short s8 = jVar2.readShort();
                k((short) (((s8 & 255) << 8) | ((s8 & 65280) >>> 8)), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            this.f6073G = (byte) 1;
        } else {
            xVar = xVar2;
        }
        if (this.f6073G == 1) {
            long j11 = jVar.f6064H;
            long j12 = this.f6076J.read(jVar, j8);
            if (j12 != -1) {
                E(j11, jVar, j12);
                return j12;
            }
            this.f6073G = (byte) 2;
        }
        if (this.f6073G != 2) {
            return -1L;
        }
        k(xVar.E(), (int) crc32.getValue(), "CRC");
        k(xVar.E(), (int) this.f6075I.getBytesWritten(), "ISIZE");
        this.f6073G = (byte) 3;
        if (xVar.q()) {
            return -1L;
        }
        throw new IOException("gzip finished without exhausting source");
    }

    @Override // Q6.D
    public final G timeout() {
        return this.f6074H.f6094G.timeout();
    }
}
