package V0;

import A0.O;
import B0.AbstractC0051h;
import java.nio.ByteBuffer;
import p094m0.C3136t;
import p117p0.E;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class b extends AbstractC0051h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p171w0.g f7012G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final E f7013H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public a f7014I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f7015J;

    public b() {
        super(6);
        this.f7012G = new p171w0.g(1, 0);
        this.f7013H = new E();
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "CameraMotionRenderer";
    }

    @Override // B0.AbstractC0051h, B0.y0
    public final void handleMessage(int i8, Object obj) {
        if (i8 == 8) {
            this.f7014I = (a) obj;
        }
    }

    @Override // B0.AbstractC0051h
    public final boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override // B0.AbstractC0051h
    public final boolean isReady() {
        return true;
    }

    @Override // B0.AbstractC0051h
    public final void onDisabled() {
        a aVar = this.f7014I;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // B0.AbstractC0051h
    public final void onPositionReset(long j8, boolean z7) {
        this.f7015J = Long.MIN_VALUE;
        a aVar = this.f7014I;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // B0.AbstractC0051h
    public final void render(long j8, long j9) {
        float[] fArr;
        while (!hasReadStreamToEnd() && this.f7015J < 100000 + j8) {
            p171w0.g gVar = this.f7012G;
            gVar.clear();
            if (readSource(getFormatHolder(), gVar, 0) != -4 || gVar.isEndOfStream()) {
                return;
            }
            long j10 = gVar.f30906K;
            this.f7015J = j10;
            boolean z7 = j10 < getLastResetPositionUs();
            if (this.f7014I != null && !z7) {
                gVar.g();
                ByteBuffer byteBuffer = gVar.f30904I;
                String str = M.f28050a;
                if (byteBuffer.remaining() != 16) {
                    fArr = null;
                } else {
                    byte[] bArrArray = byteBuffer.array();
                    int iLimit = byteBuffer.limit();
                    E e8 = this.f7013H;
                    e8.J(iLimit, bArrArray);
                    e8.L(byteBuffer.arrayOffset() + 4);
                    float[] fArr2 = new float[3];
                    for (int i8 = 0; i8 < 3; i8++) {
                        fArr2[i8] = Float.intBitsToFloat(e8.n());
                    }
                    fArr = fArr2;
                }
                if (fArr != null) {
                    this.f7014I.a(this.f7015J - getStreamOffsetUs(), fArr);
                }
            }
        }
    }

    @Override // B0.D0
    public final int supportsFormat(C3136t c3136t) {
        return "application/x-camera-motion".equals(c3136t.f27041o) ? O.o(4, 0, 0, 0) : O.o(0, 0, 0, 0);
    }
}
