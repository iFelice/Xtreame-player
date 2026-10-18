package p021c4;

import android.os.Parcel;
import com.google.android.gms.internal.measurement.AbstractBinderC2653x;
import com.google.android.gms.internal.measurement.AbstractC2658y;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class Y0 extends AbstractBinderC2653x implements K {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f11083G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0574d1 f11084H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y0(C0574d1 c0574d1, AtomicReference atomicReference) {
        super("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
        this.f11083G = atomicReference;
        this.f11084H = c0574d1;
    }

    @Override // p021c4.K
    public final void B1(t1 t1Var) {
        AtomicReference atomicReference = this.f11083G;
        synchronized (atomicReference) {
            T t7 = ((C0597l0) this.f11084H.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11047T.b(Integer.valueOf(t1Var.f11370G.size()), "[sgtm] Got upload batches from service. count");
            atomicReference.set(t1Var);
            atomicReference.notifyAll();
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractBinderC2653x
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 2) {
            return false;
        }
        t1 t1Var = (t1) AbstractC2658y.a(parcel, t1.CREATOR);
        AbstractC2658y.b(parcel);
        B1(t1Var);
        return true;
    }
}
