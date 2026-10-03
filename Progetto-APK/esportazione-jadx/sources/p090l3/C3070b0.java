package p090l3;

import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.InterfaceC1157cb;

/* JADX INFO: renamed from: l3.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3070b0 extends AbstractC2276y5 implements InterfaceC3074d0 {
    @Override // p090l3.InterfaceC3074d0
    public final InterfaceC1157cb getAdapterCreator() {
        Parcel parcelN2 = n2(2, j0());
        InterfaceC1157cb interfaceC1157cbZ3 = BinderC1054ab.z3(parcelN2.readStrongBinder());
        parcelN2.recycle();
        return interfaceC1157cbZ3;
    }

    @Override // p090l3.InterfaceC3074d0
    public final L0 getLiteSdkVersion() {
        Parcel parcelN2 = n2(1, j0());
        L0 l4 = (L0) A5.a(parcelN2, L0.CREATOR);
        parcelN2.recycle();
        return l4;
    }
}
