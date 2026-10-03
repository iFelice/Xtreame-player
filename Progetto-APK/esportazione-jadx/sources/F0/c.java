package F0;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import p094m0.C;
import p094m0.a0;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class c implements M0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3016c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f3017d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f3018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f3019f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f3020g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f3021h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v f3022i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C f3023j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Uri f3024k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final i f3025l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List f3026m;

    public c(long j8, long j9, long j10, boolean z7, long j11, long j12, long j13, long j14, i iVar, v vVar, C c8, Uri uri, ArrayList arrayList) {
        this.f3014a = j8;
        this.f3015b = j9;
        this.f3016c = j10;
        this.f3017d = z7;
        this.f3018e = j11;
        this.f3019f = j12;
        this.f3020g = j13;
        this.f3021h = j14;
        this.f3025l = iVar;
        this.f3022i = vVar;
        this.f3024k = uri;
        this.f3023j = c8;
        this.f3026m = arrayList;
    }

    @Override // M0.a
    public final Object a(List list) {
        ArrayList arrayList;
        long j8;
        ArrayList arrayList2;
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new a0());
        ArrayList arrayList3 = new ArrayList();
        long j9 = 0;
        int i8 = 0;
        while (i8 < this.f3026m.size()) {
            if (((a0) linkedList.peek()).f26802G != i8) {
                long jC = c(i8);
                if (jC != -9223372036854775807L) {
                    j9 += jC;
                }
                arrayList2 = arrayList3;
            } else {
                h hVarB = b(i8);
                List list2 = hVarB.f3051c;
                a0 a0Var = (a0) linkedList.poll();
                int i9 = a0Var.f26802G;
                ArrayList arrayList4 = new ArrayList();
                while (true) {
                    int i10 = a0Var.f26803H;
                    a aVar = (a) list2.get(i10);
                    List list3 = aVar.f3006c;
                    ArrayList arrayList5 = new ArrayList();
                    do {
                        arrayList5.add((m) list3.get(a0Var.f26804I));
                        a0Var = (a0) linkedList.poll();
                        if (a0Var.f26802G != i9) {
                            break;
                        }
                    } while (a0Var.f26803H == i10);
                    arrayList = arrayList3;
                    j8 = j9;
                    arrayList4.add(new a(aVar.f3004a, aVar.f3005b, arrayList5, aVar.f3007d, aVar.f3008e, aVar.f3009f));
                    if (a0Var.f26802G != i9) {
                        break;
                    }
                    arrayList3 = arrayList;
                    j9 = j8;
                }
                linkedList.addFirst(a0Var);
                arrayList2 = arrayList;
                arrayList2.add(new h(hVarB.f3049a, hVarB.f3050b - j8, arrayList4, hVarB.f3052d));
                j9 = j8;
            }
            i8++;
            arrayList3 = arrayList2;
        }
        ArrayList arrayList6 = arrayList3;
        long j10 = j9;
        long j11 = this.f3015b;
        return new c(this.f3014a, j11 != -9223372036854775807L ? j11 - j10 : -9223372036854775807L, this.f3016c, this.f3017d, this.f3018e, this.f3019f, this.f3020g, this.f3021h, this.f3025l, this.f3022i, this.f3023j, this.f3024k, arrayList6);
    }

    public final h b(int i8) {
        return (h) this.f3026m.get(i8);
    }

    public final long c(int i8) {
        List list = this.f3026m;
        if (i8 != list.size() - 1) {
            return ((h) list.get(i8 + 1)).f3050b - ((h) list.get(i8)).f3050b;
        }
        long j8 = this.f3015b;
        if (j8 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j8 - ((h) list.get(i8)).f3050b;
    }

    public final long d(int i8) {
        return M.R(c(i8));
    }
}
