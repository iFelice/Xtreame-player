package p156u;

import Y5.n;
import Y5.p;
import Y5.v;
import Y5.y;
import com.google.api.Service;
import java.util.Comparator;
import p014b5.b;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Comparator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f30355G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f30356H;

    public /* synthetic */ f(Object obj, int i8) {
        this.f30355G = i8;
        this.f30356H = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int iZ0;
        int iZ1;
        switch (this.f30355G) {
            case 0:
                return ((i) obj).f30363H - ((i) obj2).f30363H;
            case 1:
                b bVar = (b) obj;
                b bVar2 = (b) obj2;
                if (bVar.a() > bVar2.a()) {
                    return -1;
                }
                return bVar.a() < bVar2.a() ? 1 : 0;
            case 2:
                return ((p) obj).a() - ((p) obj2).a();
            default:
                AbstractC2987b abstractC2987b = (AbstractC2987b) ((y) this.f30356H);
                char c8 = 0;
                abstractC2987b.getClass();
                switch (c8) {
                    case 25:
                        iZ0 = ((n) obj).z0();
                        break;
                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                        iZ0 = ((p) obj).a();
                        break;
                    default:
                        iZ0 = ((v) obj).y();
                        break;
                }
                char c9 = 0;
                abstractC2987b.getClass();
                switch (c9) {
                    case 25:
                        iZ1 = ((n) obj2).z0();
                        break;
                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                        iZ1 = ((p) obj2).a();
                        break;
                    default:
                        iZ1 = ((v) obj2).y();
                        break;
                }
                int i8 = iZ0 - iZ1;
                return i8 != 0 ? i8 : obj.getClass().getName().compareTo(obj2.getClass().getName());
        }
    }
}
