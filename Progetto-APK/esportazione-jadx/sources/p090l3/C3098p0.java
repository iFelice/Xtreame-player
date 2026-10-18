package p090l3;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: renamed from: l3.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3098p0 extends AbstractC2276y5 implements InterfaceC3100q0 {
    public C3098p0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnPaidEventListener", 0);
    }

    @Override // p090l3.InterfaceC3100q0
    public final void C2(e1 e1Var) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, e1Var);
        O2(1, parcelJ0);
    }

    @Override // p090l3.InterfaceC3100q0
    public final boolean zzf() {
        Parcel parcelN2 = n2(2, j0());
        ClassLoader classLoader = A5.f11962a;
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }
}
