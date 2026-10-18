package p021c4;

import Z3.RunnableC0439v;
import com.google.android.gms.internal.measurement.M;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* JADX INFO: renamed from: c4.o0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0603o0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11315G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ M f11316H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f11317I;

    public /* synthetic */ RunnableC0603o0(AppMeasurementDynamiteService appMeasurementDynamiteService, M m7, int i8) {
        this.f11315G = i8;
        this.f11316H = m7;
        this.f11317I = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f11315G;
        AppMeasurementDynamiteService appMeasurementDynamiteService = this.f11317I;
        boolean z7 = false;
        switch (i8) {
            case 0:
                C0574d1 c0574d1R = appMeasurementDynamiteService.f24099G.r();
                c0574d1R.m();
                c0574d1R.n();
                c0574d1R.E(new RunnableC0439v(c0574d1R, c0574d1R.B(false), this.f11316H, 10, 0));
                break;
            default:
                I1 i9 = appMeasurementDynamiteService.f24099G.f11261R;
                C0597l0.i(i9);
                C0597l0 c0597l0 = appMeasurementDynamiteService.f24099G;
                if (c0597l0.f11277h0 != null && c0597l0.f11277h0.booleanValue()) {
                    z7 = true;
                }
                i9.I(this.f11316H, z7);
                break;
        }
    }
}
