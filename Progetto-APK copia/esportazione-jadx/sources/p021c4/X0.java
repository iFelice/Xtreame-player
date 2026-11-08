package p021c4;

import android.os.Parcel;
import com.google.android.gms.internal.measurement.AbstractBinderC2653x;
import com.google.android.gms.internal.measurement.AbstractC2658y;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class X0 extends AbstractBinderC2653x implements I {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f11077G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X0(AtomicReference atomicReference) {
        super("com.google.android.gms.measurement.internal.ITriggerUrisCallback");
        this.f11077G = atomicReference;
    }

    @Override // p021c4.I
    public final void P2(List list) {
        AtomicReference atomicReference = this.f11077G;
        synchronized (atomicReference) {
            atomicReference.set(list);
            atomicReference.notifyAll();
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractBinderC2653x
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 2) {
            return false;
        }
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(o1.CREATOR);
        AbstractC2658y.b(parcel);
        P2(arrayListCreateTypedArrayList);
        return true;
    }
}
