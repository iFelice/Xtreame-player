package p090l3;

import F2.G;
import R3.b;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.C1057ae;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import com.google.android.gms.internal.ads.InterfaceC1160ce;
import com.google.android.gms.internal.measurement.H1;
import p120p3.j;

/* JADX INFO: renamed from: l3.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3075e extends AbstractC3095o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f26563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1157cb f26564c;

    public C3075e(Context context, BinderC1054ab binderC1054ab) {
        this.f26563b = context;
        this.f26564c = binderC1054ab;
    }

    @Override // p090l3.AbstractC3095o
    public final /* bridge */ /* synthetic */ Object a() {
        return null;
    }

    @Override // p090l3.AbstractC3095o
    public final Object b(X x7) {
        return x7.t3(new b(this.f26563b), this.f26564c, 243220000);
    }

    @Override // p090l3.AbstractC3095o
    public final Object c() {
        Context context = this.f26563b;
        b bVar = new b(context);
        try {
            return ((C1057ae) ((InterfaceC1160ce) H1.G(context, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", new G(16)))).z3(bVar, this.f26564c);
        } catch (RemoteException | NullPointerException | j unused) {
            return null;
        }
    }
}
