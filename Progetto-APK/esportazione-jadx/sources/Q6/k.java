package Q6;

import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public interface k extends B, WritableByteChannel {
    k B(String str);

    k F(long j8);

    long H(D d6);

    k M(byte[] bArr);

    k Q(int i8, byte[] bArr, int i9);

    k T(m mVar);

    k V(long j8);

    j a();

    @Override // Q6.B, java.io.Flushable
    void flush();

    k h();

    k j(int i8);

    k n(int i8);

    k r(int i8);

    k t();
}
