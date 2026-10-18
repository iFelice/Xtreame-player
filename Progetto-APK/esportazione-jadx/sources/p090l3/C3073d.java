package p090l3;

import F2.G;
import R3.b;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.C0667Bc;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.measurement.H1;
import p120p3.j;

/* JADX INFO: renamed from: l3.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3073d extends AbstractC3095o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f26546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1157cb f26547c;

    public C3073d(Context context, BinderC1054ab binderC1054ab) {
        this.f26546b = context;
        this.f26547c = binderC1054ab;
    }

    @Override // p090l3.AbstractC3095o
    public final /* bridge */ /* synthetic */ Object a() {
        C3093n.d(this.f26546b, "out_of_context_tester");
        return null;
    }

    @Override // p090l3.AbstractC3095o
    public final Object b(X x7) {
        Context context = this.f26546b;
        b bVar = new b(context);
        Q7.a(context);
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.G8)).booleanValue()) {
            return x7.g3(bVar, this.f26547c, 243220000);
        }
        return null;
    }

    @Override // p090l3.AbstractC3095o
    public final Object c() {
        Context context = this.f26546b;
        b bVar = new b(context);
        Q7.a(context);
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.G8)).booleanValue()) {
            return null;
        }
        try {
            return ((C3107u0) H1.G(context, "com.google.android.gms.ads.DynamiteOutOfContextTesterCreatorImpl", new G(15))).z3(bVar, this.f26547c);
        } catch (RemoteException | NullPointerException | j e8) {
            C0667Bc.a(context).b("ClientApiBroker.getOutOfContextTester", e8);
            return null;
        }
    }
}
