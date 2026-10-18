package C3;

import K3.InterfaceC0243p;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class A implements InterfaceC0243p {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1428G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ F f1429H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ String f1430I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0106f f1431J;

    public /* synthetic */ A(F f8, InterfaceC0106f interfaceC0106f, String str) {
        this.f1429H = f8;
        this.f1431J = interfaceC0106f;
        this.f1430I = str;
    }

    @Override // K3.InterfaceC0243p
    public final void accept(Object obj, Object obj2) {
        int i8 = this.f1428G;
        InterfaceC0106f interfaceC0106f = this.f1431J;
        String str = this.f1430I;
        F f8 = this.f1429H;
        switch (i8) {
            case 0:
                H3.y yVar = (H3.y) obj;
                p052g4.i iVar = (p052g4.i) obj2;
                com.bumptech.glide.c.j("Not active connection", f8.f1464v != 1);
                if (interfaceC0106f != null) {
                    H3.f fVar = (H3.f) yVar.getService();
                    Parcel parcelJ0 = fVar.j0();
                    parcelJ0.writeString(str);
                    fVar.i2(12, parcelJ0);
                }
                iVar.b(null);
                break;
            default:
                H3.y yVar2 = (H3.y) obj;
                p052g4.i iVar2 = (p052g4.i) obj2;
                com.bumptech.glide.c.j("Not active connection", f8.f1464v != 1);
                H3.f fVar2 = (H3.f) yVar2.getService();
                Parcel parcelJ1 = fVar2.j0();
                parcelJ1.writeString(str);
                fVar2.i2(12, parcelJ1);
                if (interfaceC0106f != null) {
                    H3.f fVar3 = (H3.f) yVar2.getService();
                    Parcel parcelJ2 = fVar3.j0();
                    parcelJ2.writeString(str);
                    fVar3.i2(11, parcelJ2);
                }
                iVar2.b(null);
                break;
        }
    }

    public /* synthetic */ A(F f8, String str, E3.j jVar) {
        this.f1429H = f8;
        this.f1430I = str;
        this.f1431J = jVar;
    }
}
