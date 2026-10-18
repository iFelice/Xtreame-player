package H3;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;
import com.google.android.gms.internal.cast.AbstractC2501u;

/* JADX INFO: loaded from: classes.dex */
public abstract class e extends AbstractBinderC2478o {
    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1) {
            return false;
        }
        Bundle bundle = (Bundle) AbstractC2501u.a(parcel, Bundle.CREATOR);
        AbstractC2501u.b(parcel);
        s sVar = (s) this;
        int i9 = sVar.f3725H;
        p052g4.i iVar = sVar.f3726I;
        switch (i9) {
            case 0:
                iVar.b(bundle);
                return true;
            case 1:
                iVar.b(bundle);
                return true;
            default:
                iVar.b(bundle);
                return true;
        }
    }
}
