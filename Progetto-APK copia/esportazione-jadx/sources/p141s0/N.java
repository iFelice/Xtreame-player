package p141s0;

import android.net.Uri;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import p117p0.M;
import p149t0.c;
import p149t0.e;

/* JADX INFO: loaded from: classes.dex */
public final class N implements InterfaceC3184i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC3184i f29912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f29913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f29914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f29915d;

    public N(InterfaceC3184i interfaceC3184i, e eVar) {
        interfaceC3184i.getClass();
        this.f29912a = interfaceC3184i;
        eVar.getClass();
        this.f29913b = eVar;
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws c {
        long jA = this.f29912a.a(c3188m);
        this.f29915d = jA;
        if (jA == 0) {
            return 0L;
        }
        if (c3188m.f29969g == -1 && jA != -1) {
            c3188m = c3188m.d(0L, jA);
        }
        this.f29914c = true;
        e eVar = this.f29913b;
        eVar.getClass();
        c3188m.f29970h.getClass();
        long j8 = c3188m.f29969g;
        int i8 = c3188m.f29971i;
        if (j8 == -1 && (i8 & 2) == 2) {
            eVar.f30173d = null;
        } else {
            eVar.f30173d = c3188m;
            eVar.f30174e = (i8 & 4) == 4 ? eVar.f30171b : Long.MAX_VALUE;
            eVar.f30178i = 0L;
            try {
                eVar.b(c3188m);
            } catch (IOException e8) {
                throw new c(e8);
            }
        }
        return this.f29915d;
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() throws c {
        e eVar = this.f29913b;
        try {
            this.f29912a.close();
            if (this.f29914c) {
                this.f29914c = false;
                if (eVar.f30173d == null) {
                    return;
                }
                try {
                    eVar.a();
                } catch (IOException e8) {
                    throw new c(e8);
                }
            }
        } catch (Throwable th) {
            if (this.f29914c) {
                this.f29914c = false;
                if (eVar.f30173d != null) {
                    try {
                        eVar.a();
                    } catch (IOException e9) {
                        throw new c(e9);
                    }
                }
            }
            throw th;
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        return this.f29912a.getUri();
    }

    @Override // p141s0.InterfaceC3184i
    public final Map k() {
        return this.f29912a.k();
    }

    @Override // p141s0.InterfaceC3184i
    public final void p(O o4) {
        o4.getClass();
        this.f29912a.p(o4);
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws c {
        if (this.f29915d == 0) {
            return -1;
        }
        int iQ = this.f29912a.q(bArr, i8, i9);
        if (iQ > 0) {
            e eVar = this.f29913b;
            C3188m c3188m = eVar.f30173d;
            if (c3188m != null) {
                int i10 = 0;
                while (i10 < iQ) {
                    try {
                        if (eVar.f30177h == eVar.f30174e) {
                            eVar.a();
                            eVar.b(c3188m);
                        }
                        int iMin = (int) Math.min(iQ - i10, eVar.f30174e - eVar.f30177h);
                        OutputStream outputStream = eVar.f30176g;
                        String str = M.f28050a;
                        outputStream.write(bArr, i8 + i10, iMin);
                        i10 += iMin;
                        long j8 = iMin;
                        eVar.f30177h += j8;
                        eVar.f30178i += j8;
                    } catch (IOException e8) {
                        throw new c(e8);
                    }
                }
            }
            long j9 = this.f29915d;
            if (j9 != -1) {
                this.f29915d = j9 - ((long) iQ);
            }
        }
        return iQ;
    }
}
