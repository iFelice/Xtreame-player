package p167v3;

import com.google.android.gms.internal.ads.C0693Cn;
import com.google.android.gms.internal.ads.InterfaceC0925Sk;
import java.util.HashSet;
import p083k3.l;

/* JADX INFO: loaded from: classes.dex */
public final class D implements InterfaceC0925Sk {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0693Cn f30576G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C f30577H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f30578I;

    public D(C0693Cn c0693Cn, C c8, String str) {
        this.f30576G = c0693Cn;
        this.f30577H = c8;
        this.f30578I = str;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0925Sk
    public final void c(r rVar) {
        if (rVar == null) {
            return;
        }
        C c8 = this.f30577H;
        String str = this.f30578I;
        C0693Cn c0693Cn = this.f30576G;
        String str2 = rVar.f30682b;
        synchronized (c8) {
            l.f25980A.f25990j.getClass();
            c8.f30571e.put(str, new B(Long.valueOf(System.currentTimeMillis()), str2, new HashSet()));
            c8.g();
            c8.e(c0693Cn);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0925Sk
    public final void b(String str) {
    }
}
