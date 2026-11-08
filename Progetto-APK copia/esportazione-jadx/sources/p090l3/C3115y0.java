package p090l3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: renamed from: l3.y0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3115y0 extends AbstractC2276y5 implements B0 {
    public C3115y0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController", 0);
    }

    @Override // p090l3.B0
    public final void S0(D0 d6) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, d6);
        O2(8, parcelJ0);
    }

    @Override // p090l3.B0
    public final float zze() {
        throw null;
    }

    @Override // p090l3.B0
    public final float zzf() {
        throw null;
    }

    @Override // p090l3.B0
    public final float zzg() {
        throw null;
    }

    @Override // p090l3.B0
    public final D0 zzi() {
        D0 c8;
        Parcel parcelN2 = n2(11, j0());
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c8 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            c8 = iInterfaceQueryLocalInterface instanceof D0 ? (D0) iInterfaceQueryLocalInterface : new C0(strongBinder);
        }
        parcelN2.recycle();
        return c8;
    }
}
