package U0;

import B0.C0072w;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.gms.internal.atv_ads_framework.x0;
import p094m0.w0;

/* JADX INFO: renamed from: U0.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0344j implements Handler.Callback {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Handler f6763G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0345k f6764H;

    public C0344j(C0345k c0345k, K0.l lVar) {
        this.f6764H = c0345k;
        Handler handlerN = p117p0.M.n(this);
        this.f6763G = handlerN;
        lVar.g(this, handlerN);
    }

    public final void a(long j8) {
        Surface surface;
        C0345k c0345k = this.f6764H;
        if (this != c0345k.f6777J1 || c0345k.f4420a0 == null) {
            return;
        }
        if (j8 == Long.MAX_VALUE) {
            c0345k.f4396L0 = true;
            return;
        }
        try {
            c0345k.X(j8);
            w0 w0Var = c0345k.f6772E1;
            boolean zEquals = w0Var.equals(w0.f27062d);
            x0 x0Var = c0345k.f6785Y0;
            if (!zEquals && !w0Var.equals(c0345k.f6773F1)) {
                c0345k.f6773F1 = w0Var;
                x0Var.A(w0Var);
            }
            c0345k.f4400N0.f968e++;
            E e8 = c0345k.f6788b1;
            boolean z7 = e8.f6633e != 3;
            e8.f6633e = 3;
            ((p117p0.G) e8.f6640l).getClass();
            e8.f6635g = p117p0.M.R(SystemClock.elapsedRealtime());
            if (z7 && (surface = c0345k.f6802p1) != null) {
                x0Var.v(surface);
                c0345k.f6805s1 = true;
            }
            c0345k.B(j8);
        } catch (C0072w e9) {
            c0345k.f4398M0 = e9;
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        int i8 = message.arg1;
        int i9 = message.arg2;
        String str = p117p0.M.f28050a;
        a(((((long) i8) & 4294967295L) << 32) | (4294967295L & ((long) i9)));
        return true;
    }
}
