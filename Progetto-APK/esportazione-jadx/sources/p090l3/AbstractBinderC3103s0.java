package p090l3;

import R3.a;
import R3.b;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import com.google.android.gms.internal.ads.BinderC2258xo;

/* JADX INFO: renamed from: l3.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC3103s0 extends AbstractBinderC2328z5 implements InterfaceC3105t0 {
    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1) {
            return false;
        }
        String string = parcel.readString();
        a aVarJ0 = b.j0(parcel.readStrongBinder());
        a aVarJ1 = b.j0(parcel.readStrongBinder());
        A5.b(parcel);
        ((BinderC2258xo) this).h1(string, aVarJ0, aVarJ1);
        parcel2.writeNoException();
        return true;
    }
}
