package H3;

import C3.C0104d;
import android.os.Parcel;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;
import com.google.android.gms.internal.cast.AbstractC2501u;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends AbstractBinderC2478o implements h {
    public g() {
        super("com.google.android.gms.cast.internal.ICastDeviceControllerListener", 0);
    }

    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        switch (i8) {
            case 1:
                int i9 = parcel.readInt();
                AbstractC2501u.b(parcel);
                q(i9);
                return true;
            case 2:
                C0104d c0104d = (C0104d) AbstractC2501u.a(parcel, C0104d.CREATOR);
                String string = parcel.readString();
                String string2 = parcel.readString();
                boolean z7 = parcel.readInt() != 0;
                AbstractC2501u.b(parcel);
                o0(c0104d, string, string2, z7);
                return true;
            case 3:
                int i10 = parcel.readInt();
                AbstractC2501u.b(parcel);
                C(i10);
                return true;
            case 4:
                parcel.readString();
                parcel.readDouble();
                int i11 = AbstractC2501u.f22800a;
                parcel.readInt();
                AbstractC2501u.b(parcel);
                E();
                return true;
            case 5:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                AbstractC2501u.b(parcel);
                f1(string3, string4);
                return true;
            case 6:
                String string5 = parcel.readString();
                byte[] bArrCreateByteArray = parcel.createByteArray();
                AbstractC2501u.b(parcel);
                i1(bArrCreateByteArray, string5);
                return true;
            case 7:
                int i12 = parcel.readInt();
                AbstractC2501u.b(parcel);
                d(i12);
                return true;
            case 8:
                int i13 = parcel.readInt();
                AbstractC2501u.b(parcel);
                zzg(i13);
                return true;
            case 9:
                int i14 = parcel.readInt();
                AbstractC2501u.b(parcel);
                zzd(i14);
                return true;
            case 10:
                parcel.readString();
                long j8 = parcel.readLong();
                int i15 = parcel.readInt();
                AbstractC2501u.b(parcel);
                zzm(i15, j8);
                return true;
            case 11:
                parcel.readString();
                long j9 = parcel.readLong();
                AbstractC2501u.b(parcel);
                y1(j9);
                return true;
            case 12:
                c cVar = (c) AbstractC2501u.a(parcel, c.CREATOR);
                AbstractC2501u.b(parcel);
                E1(cVar);
                return true;
            case 13:
                d dVar = (d) AbstractC2501u.a(parcel, d.CREATOR);
                AbstractC2501u.b(parcel);
                x2(dVar);
                return true;
            case 14:
                int i16 = parcel.readInt();
                AbstractC2501u.b(parcel);
                zzi(i16);
                return true;
            case 15:
                int i17 = parcel.readInt();
                AbstractC2501u.b(parcel);
                O(i17);
                return true;
            default:
                return false;
        }
    }
}
