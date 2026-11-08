package S3;

import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public final class j extends AbstractC2276y5 {
    public final R3.a A3(R3.b bVar, String str, int i8, R3.b bVar2) {
        Parcel parcelJ0 = j0();
        Y3.a.c(parcelJ0, bVar);
        parcelJ0.writeString(str);
        parcelJ0.writeInt(i8);
        Y3.a.c(parcelJ0, bVar2);
        return U2.f(Y(3, parcelJ0));
    }

    public final R3.a z3(R3.b bVar, String str, int i8, R3.b bVar2) {
        Parcel parcelJ0 = j0();
        Y3.a.c(parcelJ0, bVar);
        parcelJ0.writeString(str);
        parcelJ0.writeInt(i8);
        Y3.a.c(parcelJ0, bVar2);
        return U2.f(Y(2, parcelJ0));
    }
}
