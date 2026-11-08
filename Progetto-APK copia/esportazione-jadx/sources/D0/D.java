package D0;

import C0.C0084i;
import android.media.AudioTrack;
import android.os.Handler;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class D implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1743G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f1744H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f1745I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f1746J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f1747K;

    public /* synthetic */ D(Object obj, Object obj2, Object obj3, Object obj4, int i8) {
        this.f1743G = i8;
        this.f1744H = obj;
        this.f1745I = obj2;
        this.f1746J = obj3;
        this.f1747K = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1743G) {
            case 0:
                AudioTrack audioTrack = (AudioTrack) this.f1744H;
                final InterfaceC0128s interfaceC0128s = (InterfaceC0128s) this.f1745I;
                Handler handler = (Handler) this.f1746J;
                final C0126p c0126p = (C0126p) this.f1747K;
                final int i8 = 1;
                try {
                    audioTrack.flush();
                    audioTrack.release();
                    if (interfaceC0128s != null && handler.getLooper().getThread().isAlive()) {
                        final int i9 = 0;
                        handler.post(new Runnable() { // from class: D0.F
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i10 = i9;
                                C0126p c0126p2 = c0126p;
                                InterfaceC0128s interfaceC0128s2 = interfaceC0128s;
                                switch (i10) {
                                    case 0:
                                        interfaceC0128s2.j(c0126p2);
                                        break;
                                    default:
                                        interfaceC0128s2.j(c0126p2);
                                        break;
                                }
                            }
                        });
                    }
                    synchronized (S.f1790p0) {
                        try {
                            int i10 = S.f1792r0 - 1;
                            S.f1792r0 = i10;
                            if (i10 == 0) {
                                S.f1791q0.shutdown();
                                S.f1791q0 = null;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    return;
                } catch (Throwable th2) {
                    if (interfaceC0128s != null && handler.getLooper().getThread().isAlive()) {
                        handler.post(new Runnable() { // from class: D0.F
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i11 = i8;
                                C0126p c0126p2 = c0126p;
                                InterfaceC0128s interfaceC0128s2 = interfaceC0128s;
                                switch (i11) {
                                    case 0:
                                        interfaceC0128s2.j(c0126p2);
                                        break;
                                    default:
                                        interfaceC0128s2.j(c0126p2);
                                        break;
                                }
                            }
                        });
                    }
                    synchronized (S.f1790p0) {
                        try {
                            int i11 = S.f1792r0 - 1;
                            S.f1792r0 = i11;
                            if (i11 == 0) {
                                S.f1791q0.shutdown();
                                S.f1791q0 = null;
                            }
                            throw th2;
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            default:
                Z2.a aVar = (Z2.a) this.f1744H;
                U2.i iVar = (U2.i) this.f1745I;
                C0084i c0084i = (C0084i) this.f1746J;
                U2.h hVar = (U2.h) this.f1747K;
                Logger logger = Z2.a.f8225f;
                aVar.getClass();
                Logger logger2 = Z2.a.f8225f;
                try {
                    V2.h hVarA = aVar.f8228c.a(iVar.f6952a);
                    if (hVarA == null) {
                        String str = "Transport backend '" + iVar.f6952a + "' is not registered";
                        logger2.warning(str);
                        new IllegalArgumentException(str);
                        c0084i.getClass();
                    } else {
                        ((p012b3.j) aVar.f8230e).a0(new O0.A(aVar, iVar, ((S2.d) hVarA).a(hVar), 2));
                        c0084i.getClass();
                    }
                    return;
                } catch (Exception e8) {
                    logger2.warning("Error scheduling event " + e8.getMessage());
                    c0084i.getClass();
                    return;
                }
        }
    }
}
