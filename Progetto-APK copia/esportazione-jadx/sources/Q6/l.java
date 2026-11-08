package Q6;

import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public interface l extends D, ReadableByteChannel {
    String C(Charset charset);

    m G();

    boolean I(long j8);

    String K();

    x S();

    void U(long j8);

    long X();

    int Y(u uVar);

    i Z();

    j a();

    void b(long j8);

    m d(long j8);

    void i(j jVar, long j8);

    byte[] p();

    boolean q();

    byte readByte();

    void readFully(byte[] bArr);

    int readInt();

    long readLong();

    short readShort();

    boolean s(long j8, m mVar);

    long u();

    String v(long j8);
}
