package O0;

import android.net.Uri;
import com.google.android.gms.internal.measurement.H1;
import java.util.Map;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;

/* JADX INFO: renamed from: O0.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0291o implements InterfaceC3184i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC3184i f5222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final H f5224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f5225d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5226e;

    public C0291o(p141s0.M m7, int i8, H h8) {
        H1.d(i8 > 0);
        this.f5222a = m7;
        this.f5223b = i8;
        this.f5224c = h8;
        this.f5225d = new byte[1];
        this.f5226e = i8;
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) {
        throw new UnsupportedOperationException();
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
        throw new UnsupportedOperationException();
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        return this.f5222a.getUri();
    }

    @Override // p141s0.InterfaceC3184i
    public final Map k() {
        return this.f5222a.k();
    }

    @Override // p141s0.InterfaceC3184i
    public final void p(p141s0.O o4) {
        o4.getClass();
        this.f5222a.p(o4);
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) {
        int i10 = this.f5226e;
        InterfaceC3184i interfaceC3184i = this.f5222a;
        if (i10 == 0) {
            byte[] bArr2 = this.f5225d;
            int i11 = 0;
            if (interfaceC3184i.q(bArr2, 0, 1) != -1) {
                int i12 = (bArr2[0] & 255) << 4;
                if (i12 != 0) {
                    byte[] bArr3 = new byte[i12];
                    int i13 = i12;
                    while (i13 > 0) {
                        int iQ = interfaceC3184i.q(bArr3, i11, i13);
                        if (iQ != -1) {
                            i11 += iQ;
                            i13 -= iQ;
                        }
                    }
                    while (i12 > 0 && bArr3[i12 - 1] == 0) {
                        i12--;
                    }
                    if (i12 > 0) {
                        p117p0.E e8 = new p117p0.E(bArr3, i12);
                        H h8 = this.f5224c;
                        long jMax = !h8.f5048S ? h8.f5045P : Math.max(h8.f5049T.y(true), h8.f5045P);
                        int iA = e8.a();
                        W0.L l4 = h8.f5047R;
                        l4.getClass();
                        l4.e(iA, e8);
                        l4.d(jMax, 1, iA, 0, null);
                        h8.f5048S = true;
                    }
                }
                this.f5226e = this.f5223b;
            }
            return -1;
        }
        int iQ2 = interfaceC3184i.q(bArr, i8, Math.min(this.f5226e, i9));
        if (iQ2 != -1) {
            this.f5226e -= iQ2;
        }
        return iQ2;
    }
}
