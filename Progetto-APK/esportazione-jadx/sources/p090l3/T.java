package p090l3;

import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import com.google.android.gms.internal.ads.L5;

/* JADX INFO: loaded from: classes.dex */
public abstract class T extends AbstractBinderC2328z5 implements U {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f26499G = 0;

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1) {
            return false;
        }
        String string = parcel.readString();
        String string2 = parcel.readString();
        A5.b(parcel);
        ((L5) this).G2(string, string2);
        parcel2.writeNoException();
        return true;
    }
}
