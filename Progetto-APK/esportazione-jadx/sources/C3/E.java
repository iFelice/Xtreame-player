package C3;

import com.google.android.gms.common.api.Status;
import p086l.RunnableC3036k;

/* JADX INFO: loaded from: classes.dex */
public final class E extends H3.g {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ F f1440H;

    public E(F f8) {
        this.f1440H = f8;
    }

    @Override // H3.h
    public final void C(int i8) {
        this.f1440H.f(i8);
    }

    @Override // H3.h
    public final void E() {
        F.f1441w.b("Deprecated callback: \"onStatusReceived\"", new Object[0]);
    }

    @Override // H3.h
    public final void E1(H3.c cVar) {
        F.h(this.f1440H).post(new RunnableC3036k(this, cVar, 27));
    }

    @Override // H3.h
    public final void O(int i8) {
        F.h(this.f1440H).post(new D(this, i8, 3));
    }

    @Override // H3.h
    public final void d(int i8) {
        F.d(this.f1440H, i8);
    }

    @Override // H3.h
    public final void f1(String str, String str2) {
        F.f1441w.b("Receive (type=text, ns=%s) %s", str, str2);
        F.h(this.f1440H).post(new K.a(this, str, str2, 14, 0));
    }

    @Override // H3.h
    public final void i1(byte[] bArr, String str) {
        F.f1441w.b("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    @Override // H3.h
    public final void o0(C0104d c0104d, String str, String str2, boolean z7) {
        F f8 = this.f1440H;
        f8.f1452j = c0104d;
        f8.f1453k = str;
        H3.v vVar = new H3.v(new Status(0, null, null, null), c0104d, str, str2, z7);
        synchronized (f8.f1450h) {
            try {
                p052g4.i iVar = f8.f1447e;
                if (iVar != null) {
                    iVar.b(vVar);
                }
                f8.f1447e = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // H3.h
    public final void q(int i8) {
        F.h(this.f1440H).post(new D(this, i8, 0));
    }

    @Override // H3.h
    public final void x2(H3.d dVar) {
        F.h(this.f1440H).post(new RunnableC3036k(this, dVar, 26));
    }

    @Override // H3.h
    public final void y1(long j8) {
        F.c(this.f1440H, j8, 0);
    }

    @Override // H3.h
    public final void zzd(int i8) {
        F f8 = this.f1440H;
        F.d(f8, i8);
        if (f8.f1462t != null) {
            F.h(f8).post(new D(this, i8, 2));
        }
    }

    @Override // H3.h
    public final void zzg(int i8) {
        F.d(this.f1440H, i8);
    }

    @Override // H3.h
    public final void zzi(int i8) {
        F.h(this.f1440H).post(new D(this, i8, 1));
    }

    @Override // H3.h
    public final void zzm(int i8, long j8) {
        F.c(this.f1440H, j8, i8);
    }
}
