package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class HM extends VJ {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f13750j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13751k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13752l;

    @Override // com.google.android.gms.internal.ads.VJ
    public final void e() {
        super.e();
        this.f13751k = 0;
    }

    public final boolean i(VJ vj) {
        ByteBuffer byteBuffer;
        p113o3.r.J(!vj.b(1073741824));
        p113o3.r.J(!vj.b(268435456));
        p113o3.r.J(!vj.b(4));
        if (j()) {
            if (this.f13751k >= this.f13752l) {
                return false;
            }
            ByteBuffer byteBuffer2 = vj.f16993e;
            if (byteBuffer2 != null && (byteBuffer = this.f16993e) != null) {
                if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                    return false;
                }
            }
        }
        int i8 = this.f13751k;
        this.f13751k = i8 + 1;
        if (i8 == 0) {
            this.f16995g = vj.f16995g;
            if (vj.b(1)) {
                this.f29448b = 1;
            }
        }
        ByteBuffer byteBuffer3 = vj.f16993e;
        if (byteBuffer3 != null) {
            f(byteBuffer3.remaining());
            this.f16993e.put(byteBuffer3);
        }
        this.f13750j = vj.f16995g;
        return true;
    }

    public final boolean j() {
        return this.f13751k > 0;
    }
}
