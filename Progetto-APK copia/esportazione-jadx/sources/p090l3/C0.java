package p090l3;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: loaded from: classes.dex */
public final class C0 extends AbstractC2276y5 implements D0 {
    public C0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks", 0);
    }

    @Override // p090l3.D0
    public final void K2(boolean z7) {
        Parcel parcelJ0 = j0();
        ClassLoader classLoader = A5.f11962a;
        parcelJ0.writeInt(z7 ? 1 : 0);
        O2(5, parcelJ0);
    }

    @Override // p090l3.D0
    public final void b() {
        O2(4, j0());
    }

    @Override // p090l3.D0
    public final void zzg() {
        O2(3, j0());
    }

    @Override // p090l3.D0
    public final void zzh() {
        O2(2, j0());
    }

    @Override // p090l3.D0
    public final void zzi() {
        O2(1, j0());
    }
}
