package H0;

import java.util.Arrays;
import okhttp3.internal.http2.Http2;

/* JADX INFO: loaded from: classes.dex */
public final class f extends P0.f {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public byte[] f3444P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public volatile boolean f3445Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public byte[] f3446R;

    @Override // S0.j
    public final void I() {
        this.f3445Q = true;
    }

    @Override // S0.j
    public final void p() {
        try {
            this.f5728O.a(this.f5721H);
            int iQ = 0;
            int i8 = 0;
            while (iQ != -1 && !this.f3445Q) {
                byte[] bArr = this.f3444P;
                if (bArr.length < i8 + Http2.INITIAL_MAX_FRAME_SIZE) {
                    this.f3444P = Arrays.copyOf(bArr, bArr.length + Http2.INITIAL_MAX_FRAME_SIZE);
                }
                iQ = this.f5728O.q(this.f3444P, i8, Http2.INITIAL_MAX_FRAME_SIZE);
                if (iQ != -1) {
                    i8 += iQ;
                }
            }
            if (!this.f3445Q) {
                this.f3446R = Arrays.copyOf(this.f3444P, i8);
            }
        } finally {
            p102n0.c.d(this.f5728O);
        }
    }
}
