package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class J3 extends AbstractC2290yJ {
    static {
        Q3.b.G(J3.class);
    }

    public J3(C1003Ye c1003Ye, C1017Ze c1017Ze) {
        ByteBuffer byteBuffer = c1003Ye.f17625G;
        long jLimit = byteBuffer.limit();
        this.f22016H = c1003Ye;
        this.f22018J = c1003Ye.E();
        byteBuffer.position((int) (c1003Ye.E() + jLimit));
        this.f22019K = c1003Ye.E();
        this.f22015G = c1017Ze;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2290yJ, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2290yJ
    public final String toString() {
        String string = this.f22016H.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 7);
        sb.append("model(");
        sb.append(string);
        sb.append(")");
        return sb.toString();
    }
}
