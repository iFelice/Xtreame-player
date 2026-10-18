package p021c4;

import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class H extends AbstractC2276y5 implements I {
    @Override // p021c4.I
    public final void P2(List list) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeTypedList(list);
        i2(2, parcelJ0);
    }
}
