package D3;

import android.os.Parcel;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;
import com.google.android.gms.internal.cast.AbstractC2501u;
import com.google.android.gms.internal.cast.C2438e;

/* JADX INFO: loaded from: classes.dex */
public final class C extends AbstractBinderC2478o {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2438e f2327H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C(C2438e c2438e) {
        super("com.google.android.gms.cast.framework.ISessionProvider", 0);
        this.f2327H = c2438e;
    }

    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        C2438e c2438e = this.f2327H;
        if (i8 == 1) {
            String string = parcel.readString();
            AbstractC2501u.b(parcel);
            c2438e.getClass();
            F3.l lVar = new F3.l(c2438e.f22724a, c2438e.f22727d, c2438e.f22728e);
            R3.a aVarC = new C0159c(c2438e.f22724a, c2438e.f22725b, string, c2438e.f22727d, c2438e.f22728e, lVar).c();
            parcel2.writeNoException();
            AbstractC2501u.d(parcel2, aVarC);
            return true;
        }
        if (i8 == 2) {
            boolean z7 = c2438e.f22727d.f2356K;
            parcel2.writeNoException();
            int i9 = AbstractC2501u.f22800a;
            parcel2.writeInt(z7 ? 1 : 0);
            return true;
        }
        if (i8 == 3) {
            String str = c2438e.f22725b;
            parcel2.writeNoException();
            parcel2.writeString(str);
            return true;
        }
        if (i8 != 4) {
            return false;
        }
        parcel2.writeNoException();
        parcel2.writeInt(12451000);
        return true;
    }
}
