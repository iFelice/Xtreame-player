package p090l3;

import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;

/* JADX INFO: loaded from: classes.dex */
public abstract class B extends AbstractBinderC2328z5 implements C {
    public B() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            b1 b1Var = (b1) A5.a(parcel, b1.CREATOR);
            A5.b(parcel);
            q0(b1Var);
            parcel2.writeNoException();
        } else if (i8 == 2) {
            String strZze = zze();
            parcel2.writeNoException();
            parcel2.writeString(strZze);
        } else if (i8 == 3) {
            boolean zZzi = zzi();
            parcel2.writeNoException();
            ClassLoader classLoader = A5.f11962a;
            parcel2.writeInt(zZzi ? 1 : 0);
        } else if (i8 == 4) {
            String strZzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(strZzf);
        } else {
            if (i8 != 5) {
                return false;
            }
            b1 b1Var2 = (b1) A5.a(parcel, b1.CREATOR);
            int i9 = parcel.readInt();
            A5.b(parcel);
            H0(b1Var2, i9);
            parcel2.writeNoException();
        }
        return true;
    }
}
