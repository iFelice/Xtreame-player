package R1;

import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f6269G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f6270H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f6271I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f6272J;

    public c(int i8, int i9, String str, String str2) {
        this.f6269G = i8;
        this.f6270H = i9;
        this.f6271I = str;
        this.f6272J = str2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        c cVar = (c) obj;
        q0.h(cVar, "other");
        int i8 = this.f6269G - cVar.f6269G;
        return i8 == 0 ? this.f6270H - cVar.f6270H : i8;
    }
}
