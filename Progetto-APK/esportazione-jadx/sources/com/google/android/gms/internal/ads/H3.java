package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class H3 implements I3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f13696b = Logger.getLogger(H3.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final K3.X f13697a = new K3.X();

    public final K3 a(C1003Ye c1003Ye, L3 l4) throws EOFException {
        int iK;
        ByteBuffer byteBuffer;
        long jLimit;
        K3 o4;
        long jE = c1003Ye.E();
        K3.X x7 = this.f13697a;
        ((ByteBuffer) x7.get()).rewind().limit(8);
        do {
            iK = c1003Ye.k((ByteBuffer) x7.get());
            byteBuffer = c1003Ye.f17625G;
            if (iK == 8) {
                ((ByteBuffer) x7.get()).rewind();
                long jO = U2.m.o((ByteBuffer) x7.get());
                if (jO < 8 && jO > 1) {
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(jO);
                    sb.append("). Stop parsing!");
                    f13696b.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr = new byte[4];
                ((ByteBuffer) x7.get()).get(bArr);
                try {
                    String str = new String(bArr, "ISO-8859-1");
                    if (jO == 1) {
                        ((ByteBuffer) x7.get()).limit(16);
                        c1003Ye.k((ByteBuffer) x7.get());
                        ((ByteBuffer) x7.get()).position(8);
                        jLimit = U2.m.q((ByteBuffer) x7.get()) - 16;
                    } else {
                        jLimit = jO == 0 ? ((long) byteBuffer.limit()) - c1003Ye.E() : jO - 8;
                    }
                    if ("uuid".equals(str)) {
                        ((ByteBuffer) x7.get()).limit(((ByteBuffer) x7.get()).limit() + 16);
                        c1003Ye.k((ByteBuffer) x7.get());
                        byte[] bArr2 = new byte[16];
                        for (int iPosition = ((ByteBuffer) x7.get()).position() - 16; iPosition < ((ByteBuffer) x7.get()).position(); iPosition++) {
                            bArr2[iPosition - (((ByteBuffer) x7.get()).position() - 16)] = ((ByteBuffer) x7.get()).get(iPosition);
                        }
                        jLimit -= 16;
                    }
                    long j8 = jLimit;
                    if (l4 instanceof K3) {
                        ((K3) l4).getClass();
                    }
                    if ("moov".equals(str)) {
                        o4 = new M3();
                    } else if ("mvhd".equals(str)) {
                        N3 n7 = new N3("mvhd");
                        n7.f14874T = 1.0d;
                        n7.f14875U = 1.0f;
                        n7.f14876V = DJ.f12800j;
                        o4 = n7;
                    } else {
                        o4 = new O3(str, 0);
                    }
                    ((ByteBuffer) x7.get()).rewind();
                    o4.k(c1003Ye, (ByteBuffer) x7.get(), j8, this);
                    return o4;
                } catch (UnsupportedEncodingException e8) {
                    throw new RuntimeException(e8);
                }
            }
        } while (iK >= 0);
        byteBuffer.position((int) jE);
        throw new EOFException();
    }
}
