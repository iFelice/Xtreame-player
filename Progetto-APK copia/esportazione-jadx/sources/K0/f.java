package K0;

import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class f extends p171w0.g {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public long f4344O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f4345P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f4346Q;

    @Override // p171w0.g, p171w0.a
    public final void clear() {
        super.clear();
        this.f4345P = 0;
    }

    public final boolean h(p171w0.g gVar) {
        ByteBuffer byteBuffer;
        H1.d(!gVar.getFlag(1073741824));
        H1.d(!gVar.hasSupplementalData());
        H1.d(!gVar.isEndOfStream());
        if (i()) {
            if (this.f4345P >= this.f4346Q) {
                return false;
            }
            ByteBuffer byteBuffer2 = gVar.f30904I;
            if (byteBuffer2 != null && (byteBuffer = this.f30904I) != null) {
                if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                    return false;
                }
            }
        }
        int i8 = this.f4345P;
        this.f4345P = i8 + 1;
        if (i8 == 0) {
            this.f30906K = gVar.f30906K;
            if (gVar.isKeyFrame()) {
                setFlags(1);
            }
        }
        ByteBuffer byteBuffer3 = gVar.f30904I;
        if (byteBuffer3 != null) {
            f(byteBuffer3.remaining());
            this.f30904I.put(byteBuffer3);
        }
        this.f4344O = gVar.f30906K;
        return true;
    }

    public final boolean i() {
        return this.f4345P > 0;
    }
}
