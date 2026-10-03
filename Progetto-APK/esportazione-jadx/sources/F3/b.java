package F3;

import android.os.Parcel;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;
import com.google.android.gms.internal.cast.AbstractC2501u;

/* JADX INFO: loaded from: classes.dex */
public final class b extends AbstractBinderC2478o {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ c f3185H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(c cVar) {
        super("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher", 0);
        this.f3185H = cVar;
    }

    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            long j8 = parcel.readLong();
            long j9 = parcel.readLong();
            AbstractC2501u.b(parcel);
            this.f3185H.publishProgress(Long.valueOf(j8), Long.valueOf(j9));
            parcel2.writeNoException();
        } else {
            if (i8 != 2) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        }
        return true;
    }
}
