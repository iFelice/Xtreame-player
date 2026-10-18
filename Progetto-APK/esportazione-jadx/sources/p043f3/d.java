package p043f3;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.AbstractC1812p8;
import com.google.android.gms.internal.ads.Q7;
import p086l.RunnableC3036k;
import p090l3.C;
import p090l3.C3099q;
import p090l3.G0;
import p090l3.c1;
import p120p3.b;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f25161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C f25162b;

    public d(Context context, C c8) {
        this.f25161a = context;
        this.f25162b = c8;
    }

    public final void a(f fVar) {
        G0 g8 = fVar.f25163a;
        Context context = this.f25161a;
        Q7.a(context);
        if (((Boolean) AbstractC1812p8.f20421a.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                b.f28201a.execute(new RunnableC3036k(this, g8, 22));
                return;
            }
        }
        try {
            this.f25162b.q0(c1.a(context, g8));
        } catch (RemoteException e8) {
            h.e("Failed to load ad.", e8);
        }
    }
}
