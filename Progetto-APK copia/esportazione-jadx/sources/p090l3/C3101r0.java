package p090l3;

import R3.a;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: renamed from: l3.r0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3101r0 extends AbstractC2276y5 implements InterfaceC3105t0 {
    public C3101r0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOutOfContextTester", 0);
    }

    @Override // p090l3.InterfaceC3105t0
    public final void h1(String str, a aVar, a aVar2) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, aVar2);
        O2(1, parcelJ0);
    }
}
