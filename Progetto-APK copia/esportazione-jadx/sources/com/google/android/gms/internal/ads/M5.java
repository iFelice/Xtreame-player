package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class M5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14626c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f14627d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final K.k f14628e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final V.b f14629f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14637n;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f14630g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f14631h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f14632i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f14633j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14634k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14635l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f14636m = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f14638o = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f14639p = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f14640q = HttpUrl.FRAGMENT_ENCODE_SET;

    public M5(int i8, int i9, int i10, int i11, int i12, int i13, int i14, boolean z7) {
        this.f14624a = i8;
        this.f14625b = i9;
        this.f14626c = i10;
        this.f14627d = z7;
        this.f14628e = new K.k(i11);
        this.f14629f = new V.b(i12, i13, i14);
    }

    public static final String g(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i8 = 0;
        while (i8 < size) {
            sb.append((String) arrayList.get(i8));
            sb.append(' ');
            i8++;
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String string = sb.toString();
        return string.length() < 100 ? string : string.substring(0, 100);
    }

    public final void a() {
        synchronized (this.f14630g) {
            this.f14637n -= 100;
        }
    }

    public final void b(String str, boolean z7, float f8, float f9, float f10, float f11) {
        f(str, z7, f8, f9, f10, f11);
        synchronized (this.f14630g) {
            try {
                if (this.f14636m < 0) {
                    p120p3.h.b("ActivityContent: negative number of WebViews.");
                }
                c();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        synchronized (this.f14630g) {
            try {
                int i8 = this.f14634k;
                int i9 = this.f14635l;
                boolean z7 = this.f14627d;
                int i10 = this.f14625b;
                if (!z7) {
                    i10 = (i9 * i10) + (i8 * this.f14624a);
                }
                if (i10 > this.f14637n) {
                    this.f14637n = i10;
                    p083k3.l lVar = p083k3.l.f25980A;
                    if (!lVar.f25987g.d().o()) {
                        this.f14638o = this.f14628e.g(this.f14631h);
                        this.f14639p = this.f14628e.g(this.f14632i);
                    }
                    if (!lVar.f25987g.d().p()) {
                        this.f14640q = this.f14629f.i(this.f14632i, this.f14633j);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        synchronized (this.f14630g) {
            try {
                int i8 = this.f14634k;
                int i9 = this.f14635l;
                boolean z7 = this.f14627d;
                int i10 = this.f14625b;
                if (!z7) {
                    i10 = (i9 * i10) + (i8 * this.f14624a);
                }
                if (i10 > this.f14637n) {
                    this.f14637n = i10;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean e() {
        boolean z7;
        synchronized (this.f14630g) {
            z7 = this.f14636m == 0;
        }
        return z7;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof M5)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((M5) obj).f14638o;
        return str != null && str.equals(this.f14638o);
    }

    public final void f(String str, boolean z7, float f8, float f9, float f10, float f11) {
        if (str != null) {
            if (str.length() < this.f14626c) {
                return;
            }
            synchronized (this.f14630g) {
                try {
                    this.f14631h.add(str);
                    this.f14634k += str.length();
                    if (z7) {
                        this.f14632i.add(str);
                        this.f14633j.add(new R5(f8, f9, f10, f11, this.f14632i.size() - 1));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final int hashCode() {
        return this.f14638o.hashCode();
    }

    public final String toString() {
        ArrayList arrayList = this.f14631h;
        int i8 = this.f14635l;
        int i9 = this.f14637n;
        int i10 = this.f14634k;
        String strG = g(arrayList);
        String strG2 = g(this.f14632i);
        String str = this.f14638o;
        String str2 = this.f14639p;
        String str3 = this.f14640q;
        StringBuilder sbD = A0.O.D("ActivityContent fetchId: ", i8, " score:", i9, " total_length:");
        sbD.append(i10);
        sbD.append("\n text: ");
        sbD.append(strG);
        sbD.append("\n viewableText");
        p148t.a.h(sbD, strG2, "\n signture: ", str, "\n viewableSignture: ");
        return com.google.protobuf.U2.n(sbD, str2, "\n viewableSignatureForVertical: ", str3);
    }
}
