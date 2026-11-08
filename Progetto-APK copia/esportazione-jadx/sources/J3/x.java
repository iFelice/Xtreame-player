package J3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.F;
import com.google.android.gms.common.internal.Z;
import com.google.android.gms.common.internal.a0;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class x extends M3.a {
    public static final Parcelable.Creator<x> CREATOR = new v(2);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f4184G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p f4185H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f4186I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f4187J;

    public x(String str, IBinder iBinder, boolean z7, boolean z8) {
        this.f4184G = str;
        q qVar = null;
        if (iBinder != null) {
            try {
                int i8 = a0.f11838H;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
                R3.a aVarZzd = (iInterfaceQueryLocalInterface instanceof F ? (F) iInterfaceQueryLocalInterface : new Z(iBinder, "com.google.android.gms.common.internal.ICertData", 3)).zzd();
                byte[] bArr = aVarZzd == null ? null : (byte[]) R3.b.v0(aVarZzd);
                if (bArr != null) {
                    qVar = new q(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e8) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e8);
            }
        }
        this.f4185H = qVar;
        this.f4186I = z7;
        this.f4187J = z8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f4184G);
        p pVar = this.f4185H;
        if (pVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            pVar = null;
        }
        AbstractC2987b.L(parcel, 2, pVar);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f4186I ? 1 : 0);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f4187J ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }
}
