package p090l3;

import F2.G;
import R3.b;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.C1261ec;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import com.google.android.gms.internal.ads.InterfaceC1365gc;
import com.google.android.gms.internal.measurement.H1;
import p120p3.j;

/* JADX INFO: renamed from: l3.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3077f extends AbstractC3095o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f26569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1157cb f26570c;

    public C3077f(Context context, BinderC1054ab binderC1054ab) {
        this.f26569b = context;
        this.f26570c = binderC1054ab;
    }

    @Override // p090l3.AbstractC3095o
    public final /* bridge */ /* synthetic */ Object a() {
        return null;
    }

    @Override // p090l3.AbstractC3095o
    public final Object b(X x7) {
        return x7.x1(new b(this.f26569b), this.f26570c, 243220000);
    }

    @Override // p090l3.AbstractC3095o
    public final Object c() {
        Context context = this.f26569b;
        b bVar = new b(context);
        try {
            return ((C1261ec) ((InterfaceC1365gc) H1.G(context, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", new G(17)))).z3(bVar, this.f26570c);
        } catch (RemoteException | NullPointerException | j unused) {
            return null;
        }
    }
}
