package S3;

import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public final class i extends AbstractC2276y5 {
    public final R3.a A3(R3.b bVar, String str, int i8, R3.b bVar2) {
        Parcel parcelJ0 = j0();
        Y3.a.c(parcelJ0, bVar);
        parcelJ0.writeString(str);
        parcelJ0.writeInt(i8);
        Y3.a.c(parcelJ0, bVar2);
        return U2.f(Y(8, parcelJ0));
    }

    public final R3.a B3(R3.b bVar, String str, int i8) {
        Parcel parcelJ0 = j0();
        Y3.a.c(parcelJ0, bVar);
        parcelJ0.writeString(str);
        parcelJ0.writeInt(i8);
        return U2.f(Y(4, parcelJ0));
    }

    public final R3.a C3(R3.b bVar, String str, boolean z7, long j8) {
        Parcel parcelJ0 = j0();
        Y3.a.c(parcelJ0, bVar);
        parcelJ0.writeString(str);
        parcelJ0.writeInt(z7 ? 1 : 0);
        parcelJ0.writeLong(j8);
        return U2.f(Y(7, parcelJ0));
    }

    public final int J() {
        Parcel parcelY = Y(6, j0());
        int i8 = parcelY.readInt();
        parcelY.recycle();
        return i8;
    }

    public final R3.a z3(R3.b bVar, String str, int i8) {
        Parcel parcelJ0 = j0();
        Y3.a.c(parcelJ0, bVar);
        parcelJ0.writeString(str);
        parcelJ0.writeInt(i8);
        return U2.f(Y(2, parcelJ0));
    }
}
