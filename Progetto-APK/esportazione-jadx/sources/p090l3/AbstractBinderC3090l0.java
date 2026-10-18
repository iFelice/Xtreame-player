package p090l3;

import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;

/* JADX INFO: renamed from: l3.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC3090l0 extends AbstractBinderC2328z5 implements InterfaceC3092m0 {
    public AbstractBinderC3090l0() {
        super("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1) {
            return false;
        }
        C3117z0 c3117z0 = (C3117z0) A5.a(parcel, C3117z0.CREATOR);
        A5.b(parcel);
        s0(c3117z0);
        parcel2.writeNoException();
        return true;
    }
}
