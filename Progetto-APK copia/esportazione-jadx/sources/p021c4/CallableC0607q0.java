package p021c4;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* JADX INFO: renamed from: c4.q0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class CallableC0607q0 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ J1 f11340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bundle f11341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ BinderC0608r0 f11342d;

    public /* synthetic */ CallableC0607q0(BinderC0608r0 binderC0608r0, J1 j8, Bundle bundle, int i8) {
        this.f11339a = i8;
        this.f11340b = j8;
        this.f11341c = bundle;
        this.f11342d = binderC0608r0;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        int i8 = this.f11339a;
        Bundle bundle = this.f11341c;
        J1 j8 = this.f11340b;
        BinderC0608r0 binderC0608r0 = this.f11342d;
        switch (i8) {
            case 0:
                binderC0608r0.f11346G.i();
                break;
            default:
                binderC0608r0.f11346G.i();
                break;
        }
        return binderC0608r0.f11346G.h(bundle, j8);
    }
}
