package R0;

import O0.A;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import java.util.Map;
import p094m0.C3136t;
import p094m0.g0;
import p117p0.M;
import z4.E;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements n, p012b3.h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ String f6131G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f6132H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f6133I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f6134J;

    public /* synthetic */ d(k kVar, Object obj, Point point, String str) {
        this.f6132H = kVar;
        this.f6131G = str;
        this.f6133I = obj;
        this.f6134J = point;
    }

    @Override // p012b3.h
    public final Object apply(Object obj) {
        p012b3.j jVar = (p012b3.j) this.f6132H;
        Map map = (Map) this.f6133I;
        p096m2.i iVar = (p096m2.i) this.f6134J;
        R2.b bVar = p012b3.j.f9852L;
        jVar.getClass();
        return (X2.a) p012b3.j.c0(((SQLiteDatabase) obj).rawQuery(this.f6131G, new String[0]), new A(jVar, map, iVar, 6));
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0051  */
    @Override // R0.n
    public final d0 d(int i8, g0 g0Var, int[] iArr) {
        int i9;
        int i10;
        int i11;
        int i12;
        d dVar = this;
        k kVar = (k) dVar.f6132H;
        int[] iArr2 = (int[]) dVar.f6133I;
        Point point = (Point) dVar.f6134J;
        int i13 = iArr2[i8];
        int i14 = point != null ? point.x : kVar.f26925i;
        int i15 = point != null ? point.y : kVar.f26926j;
        boolean z7 = kVar.f26928l;
        if (i14 == Integer.MAX_VALUE || i15 == Integer.MAX_VALUE) {
            i9 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        } else {
            int i16 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            for (int i17 = 0; i17 < g0Var.f26857a; i17++) {
                C3136t c3136t = g0Var.f26860d[i17];
                int i18 = c3136t.f27048v;
                if (i18 > 0 && (i10 = c3136t.f27049w) > 0) {
                    if (!z7) {
                        i11 = i14;
                        i12 = i15;
                    } else if ((i18 > i10) != (i14 > i15)) {
                        i12 = i14;
                        i11 = i15;
                    } else {
                        i11 = i14;
                        i12 = i15;
                    }
                    int i19 = i18 * i12;
                    int i20 = i10 * i11;
                    Point point2 = i19 >= i20 ? new Point(i11, M.f(i20, i18)) : new Point(M.f(i19, i10), i12);
                    int i21 = c3136t.f27048v;
                    int i22 = i21 * i10;
                    if (i21 >= ((int) (point2.x * 0.98f)) && i10 >= ((int) (point2.y * 0.98f)) && i22 < i16) {
                        i16 = i22;
                    }
                }
            }
            i9 = i16;
        }
        E eQ = H.q();
        int i23 = 0;
        while (i23 < g0Var.f26857a) {
            int iB = g0Var.f26860d[i23].b();
            eQ.g0(new p(i8, g0Var, i23, kVar, iArr[i23], dVar.f6131G, i13, i9 == Integer.MAX_VALUE || (iB != -1 && iB <= i9)));
            i23++;
            dVar = this;
        }
        return eQ.m0();
    }
}
