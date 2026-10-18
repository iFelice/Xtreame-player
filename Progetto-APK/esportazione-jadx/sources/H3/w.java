package H3;

import C3.C0104d;
import androidx.leanback.widget.C;
import java.util.concurrent.atomic.AtomicReference;
import p086l.RunnableC3036k;

/* JADX INFO: loaded from: classes.dex */
public final class w extends g {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicReference f3733H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final X3.d f3734I;

    public w(x xVar) {
        this.f3733H = new AtomicReference(xVar);
        this.f3734I = new X3.d(xVar.getLooper(), 1);
    }

    @Override // H3.h
    public final void C(int i8) {
        if (((x) this.f3733H.get()) == null) {
            return;
        }
        synchronized (x.f3736u) {
        }
    }

    @Override // H3.h
    public final void E() {
        x.f3735t.b("Deprecated callback: \"onStatusreceived\"", new Object[0]);
    }

    @Override // H3.h
    public final void E1(c cVar) {
        x xVar = (x) this.f3733H.get();
        if (xVar == null) {
            return;
        }
        x.f3735t.b("onApplicationStatusChanged", new Object[0]);
        this.f3734I.post(new RunnableC3036k(xVar, cVar, 25, 0));
    }

    @Override // H3.h
    public final void d(int i8) {
        if (((x) this.f3733H.get()) == null) {
            return;
        }
        synchronized (x.f3737v) {
        }
    }

    @Override // H3.h
    public final void f1(String str, String str2) {
        x xVar = (x) this.f3733H.get();
        if (xVar == null) {
            return;
        }
        x.f3735t.b("Receive (type=text, ns=%s) %s", str, str2);
        this.f3734I.post(new K.a(xVar, str, str2));
    }

    @Override // H3.h
    public final void i1(byte[] bArr, String str) {
        if (((x) this.f3733H.get()) == null) {
            return;
        }
        x.f3735t.b("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    @Override // H3.h
    public final void o0(C0104d c0104d, String str, String str2, boolean z7) {
        x xVar = (x) this.f3733H.get();
        if (xVar == null) {
            return;
        }
        xVar.f3738a = c0104d;
        xVar.f3753p = c0104d.f1496G;
        xVar.f3754q = str2;
        xVar.f3745h = str;
        synchronized (x.f3736u) {
        }
    }

    @Override // H3.h
    public final void q(int i8) {
        x xVar = null;
        x xVar2 = (x) this.f3733H.getAndSet(null);
        if (xVar2 != null) {
            xVar2.f3751n = -1;
            xVar2.f3752o = -1;
            xVar2.f3738a = null;
            xVar2.f3745h = null;
            xVar2.f3749l = 0.0d;
            xVar2.f();
            xVar2.f3746i = false;
            xVar2.f3750m = null;
            xVar = xVar2;
        }
        if (xVar == null) {
            return;
        }
        x.f3735t.b("ICastDeviceControllerListener.onDisconnected: %d", Integer.valueOf(i8));
        if (i8 != 0) {
            xVar.triggerConnectionSuspended(2);
        }
    }

    @Override // H3.h
    public final void x2(d dVar) {
        x xVar = (x) this.f3733H.get();
        if (xVar == null) {
            return;
        }
        x.f3735t.b("onDeviceStatusChanged", new Object[0]);
        this.f3734I.post(new RunnableC3036k(xVar, dVar, 24, 0));
    }

    @Override // H3.h
    public final void y1(long j8) {
        x xVar = (x) this.f3733H.get();
        if (xVar == null) {
            return;
        }
        x.d(xVar, j8);
    }

    @Override // H3.h
    public final void zzd(int i8) {
        x xVar = (x) this.f3733H.get();
        if (xVar == null) {
            return;
        }
        xVar.f3753p = null;
        xVar.f3754q = null;
        synchronized (x.f3737v) {
        }
        if (xVar.f3740c != null) {
            this.f3734I.post(new C(xVar, i8));
        }
    }

    @Override // H3.h
    public final void zzg(int i8) {
        if (((x) this.f3733H.get()) == null) {
            return;
        }
        synchronized (x.f3737v) {
        }
    }

    @Override // H3.h
    public final void zzm(int i8, long j8) {
        x xVar = (x) this.f3733H.get();
        if (xVar == null) {
            return;
        }
        x.d(xVar, j8);
    }

    @Override // H3.h
    public final void O(int i8) {
    }

    @Override // H3.h
    public final void zzi(int i8) {
    }
}
