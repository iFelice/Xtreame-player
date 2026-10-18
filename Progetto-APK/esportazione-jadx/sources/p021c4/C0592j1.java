package p021c4;

import P3.b;
import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.PN;

/* JADX INFO: renamed from: c4.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0592j1 extends AbstractC0604p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f11230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f11231f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0592j1(Object obj, C0597l0 c0597l0, int i8) {
        super(c0597l0);
        this.f11230e = i8;
        this.f11231f = obj;
    }

    @Override // p021c4.AbstractC0604p
    public final void b() {
        int i8 = this.f11230e;
        Object obj = this.f11231f;
        switch (i8) {
            case 0:
                PN pn = (PN) obj;
                C0595k1 c0595k1 = (C0595k1) pn.f15387d;
                c0595k1.m();
                C0597l0 c0597l0 = (C0597l0) c0595k1.f10616G;
                c0597l0.f11263T.getClass();
                pn.b(SystemClock.elapsedRealtime(), false, false);
                C0619x c0619x = ((C0597l0) c0595k1.f10616G).f11266W;
                C0597l0.h(c0619x);
                c0597l0.f11263T.getClass();
                c0619x.p(SystemClock.elapsedRealtime());
                break;
            case 1:
                p1 p1Var = (p1) obj;
                p1Var.q();
                T t7 = ((C0597l0) p1Var.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11047T.a("Starting upload from DelayedRunnable");
                p1Var.f11343H.T();
                break;
            default:
                A1 a8 = (A1) obj;
                a8.d().m();
                String str = (String) a8.f10668W.pollFirst();
                if (str != null) {
                    ((b) a8.c()).getClass();
                    a8.f10686o0 = SystemClock.elapsedRealtime();
                    a8.b().f11047T.b(str, "Sending trigger URI notification to app");
                    Intent intent = new Intent();
                    intent.setAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                    intent.setPackage(str);
                    Context context = a8.f10663R.f11250G;
                    if (Build.VERSION.SDK_INT < 34) {
                        context.sendBroadcast(intent);
                    } else {
                        context.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                    }
                }
                a8.B();
                break;
        }
    }
}
