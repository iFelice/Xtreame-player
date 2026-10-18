package V5;

import F.i;
import O1.C;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends C {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public i f7175I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public a f7176J;

    @Override // O1.C
    public final int a() {
        int i8 = 0;
        int iV = 0;
        while (true) {
            i iVar = this.f7175I;
            if (i8 >= ((List) iVar.f2977H).size()) {
                return iV;
            }
            iV += iVar.v(i8);
            i8++;
        }
    }
}
