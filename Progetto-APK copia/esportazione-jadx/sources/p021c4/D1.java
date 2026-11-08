package p021c4;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.S;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* JADX INFO: loaded from: classes.dex */
public final class D1 implements InterfaceC0624z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final S f10710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f10711b;

    public D1(AppMeasurementDynamiteService appMeasurementDynamiteService, S s7) {
        this.f10711b = appMeasurementDynamiteService;
        this.f10710a = s7;
    }

    @Override // p021c4.InterfaceC0624z0
    public final void a(long j8, Bundle bundle, String str, String str2) {
        try {
            this.f10710a.U0(j8, bundle, str, str2);
        } catch (RemoteException e8) {
            C0597l0 c0597l0 = this.f10711b.f24099G;
            if (c0597l0 != null) {
                T t7 = c0597l0.f11258O;
                C0597l0.k(t7);
                t7.f11042O.b(e8, "Event listener threw exception");
            }
        }
    }
}
