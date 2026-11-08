package V5;

import F.i;
import O1.D;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f7173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public i f7174b;

    public final void a(W5.b bVar) {
        i iVar = this.f7174b;
        boolean[] zArr = (boolean[]) iVar.f2978I;
        int i8 = bVar.f7495a;
        zArr[i8] = false;
        b bVar2 = this.f7173a;
        if (bVar2 != null) {
            int iV = 0;
            for (int i9 = 0; i9 < i8; i9++) {
                iV += iVar.v(i9);
            }
            int i10 = iV + 1;
            List list = ((W5.a) ((List) iVar.f2977H).get(bVar.f7495a)).f7493H;
            int size = list != null ? list.size() : 0;
            D d6 = bVar2.f5265G;
            d6.b(iV);
            if (size > 0) {
                d6.d(i10, size);
            }
        }
    }

    public final void b(W5.b bVar) {
        i iVar = this.f7174b;
        boolean[] zArr = (boolean[]) iVar.f2978I;
        int i8 = bVar.f7495a;
        zArr[i8] = true;
        b bVar2 = this.f7173a;
        if (bVar2 != null) {
            int iV = 0;
            for (int i9 = 0; i9 < i8; i9++) {
                iV += iVar.v(i9);
            }
            int i10 = iV + 1;
            List list = ((W5.a) ((List) iVar.f2977H).get(bVar.f7495a)).f7493H;
            int size = list != null ? list.size() : 0;
            D d6 = bVar2.f5265G;
            d6.b(iV);
            if (size > 0) {
                d6.c(i10, size);
            }
        }
    }
}
