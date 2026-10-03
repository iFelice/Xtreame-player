package C3;

import K3.InterfaceC0243p;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.cast.AbstractC2501u;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class B implements InterfaceC0243p {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1432G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ F f1433H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ String f1434I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ String f1435J;

    public /* synthetic */ B(F f8, String str, String str2) {
        this.f1433H = f8;
        this.f1434I = str;
        this.f1435J = str2;
    }

    @Override // K3.InterfaceC0243p
    public final void accept(Object obj, Object obj2) {
        int i8 = this.f1432G;
        F f8 = this.f1433H;
        String str = this.f1435J;
        String str2 = this.f1434I;
        switch (i8) {
            case 0:
                H3.y yVar = (H3.y) obj;
                p052g4.i iVar = (p052g4.i) obj2;
                com.bumptech.glide.c.j("Not connected to device", f8.f1464v == 2);
                H3.f fVar = (H3.f) yVar.getService();
                Parcel parcelJ0 = fVar.j0();
                parcelJ0.writeString(str2);
                parcelJ0.writeString(str);
                AbstractC2501u.c(parcelJ0, null);
                fVar.i2(14, parcelJ0);
                synchronized (f8.f1450h) {
                    try {
                        if (f8.f1447e != null) {
                            f8.f(2477);
                        }
                        f8.f1447e = iVar;
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            default:
                H3.y yVar2 = (H3.y) obj;
                p052g4.i iVar2 = (p052g4.i) obj2;
                HashMap map = f8.f1460r;
                long jIncrementAndGet = f8.f1449g.incrementAndGet();
                com.bumptech.glide.c.j("Not connected to device", f8.f1464v == 2);
                try {
                    map.put(Long.valueOf(jIncrementAndGet), iVar2);
                    H3.f fVar2 = (H3.f) yVar2.getService();
                    Parcel parcelJ1 = fVar2.j0();
                    parcelJ1.writeString(str2);
                    parcelJ1.writeString(str);
                    parcelJ1.writeLong(jIncrementAndGet);
                    fVar2.i2(9, parcelJ1);
                    return;
                } catch (RemoteException e8) {
                    map.remove(Long.valueOf(jIncrementAndGet));
                    iVar2.a(e8);
                    return;
                }
        }
    }

    public /* synthetic */ B(F f8, String str, String str2, int i8) {
        this.f1433H = f8;
        this.f1434I = str;
        this.f1435J = str2;
    }
}
