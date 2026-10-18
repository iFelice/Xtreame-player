package C0;

import B0.C0074y;
import O0.C0300y;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import p094m0.d0;
import p094m0.e0;
import p094m0.f0;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class C {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C0074y f1242h = new C0074y(1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Random f1243i = new Random();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public G f1247d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f1249f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e0 f1244a = new e0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d0 f1245b = new d0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f1246c = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public f0 f1248e = f0.f26851a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f1250g = -1;

    public final void a(B b8) {
        long j8 = b8.f1237c;
        if (j8 != -1) {
            this.f1250g = j8;
        }
        this.f1249f = null;
    }

    public final synchronized void b(C0077b c0077b) {
        G g8;
        try {
            String str = this.f1249f;
            if (str != null) {
                B b8 = (B) this.f1246c.get(str);
                b8.getClass();
                a(b8);
            }
            Iterator it = this.f1246c.values().iterator();
            while (it.hasNext()) {
                B b9 = (B) it.next();
                it.remove();
                if (b9.f1239e && (g8 = this.f1247d) != null) {
                    ((F) g8).e(c0077b, b9.f1235a);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0045  */
    /* JADX WARN: Code duplicated, block: B:39:0x0086  */
    /* JADX WARN: Code duplicated, block: B:54:0x0098 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    public final B c(int i8, C0300y c0300y) {
        long j8;
        long j9;
        HashMap map = this.f1246c;
        B b8 = null;
        long j10 = Long.MAX_VALUE;
        for (B b9 : map.values()) {
            if (b9.f1237c == -1 && i8 == b9.f1236b && c0300y != null) {
                C c8 = b9.f1241g;
                B b10 = (B) c8.f1246c.get(c8.f1249f);
                if (b10 != null) {
                    j9 = b10.f1237c;
                    if (j9 == -1) {
                        j9 = 1 + c8.f1250g;
                    }
                } else {
                    j9 = 1 + c8.f1250g;
                }
                long j11 = c0300y.f5260d;
                if (j11 >= j9) {
                    b9.f1237c = j11;
                }
            }
            C0300y c0300y2 = b9.f1238d;
            if (c0300y != null) {
                long j12 = c0300y.f5260d;
                if (c0300y2 == null) {
                    if (!c0300y.b() && j12 == b9.f1237c) {
                        j8 = b9.f1237c;
                        if (j8 != -1) {
                        }
                        b8 = b9;
                        j10 = j8;
                    }
                } else if (j12 == c0300y2.f5260d && c0300y.f5258b == c0300y2.f5258b && c0300y.f5259c == c0300y2.f5259c) {
                    j8 = b9.f1237c;
                    if (j8 != -1) {
                    }
                    b8 = b9;
                    j10 = j8;
                }
            } else if (i8 == b9.f1236b) {
                j8 = b9.f1237c;
                if (j8 != -1 || j8 < j10) {
                    b8 = b9;
                    j10 = j8;
                } else if (j8 == j10) {
                    String str = M.f28050a;
                    if (b8.f1238d != null && c0300y2 != null) {
                        b8 = b9;
                    }
                }
            }
        }
        if (b8 != null) {
            return b8;
        }
        String str2 = (String) f1242h.get();
        B b11 = new B(this, str2, i8, c0300y);
        map.put(str2, b11);
        return b11;
    }

    public final synchronized String d(f0 f0Var, C0300y c0300y) {
        return c(f0Var.h(c0300y.f5257a, this.f1245b).f26827c, c0300y).f1235a;
    }

    public final void e(C0077b c0077b) {
        C0300y c0300y;
        boolean zQ = c0077b.f1284b.q();
        HashMap map = this.f1246c;
        if (zQ) {
            String str = this.f1249f;
            if (str != null) {
                B b8 = (B) map.get(str);
                b8.getClass();
                a(b8);
                return;
            }
            return;
        }
        B b9 = (B) map.get(this.f1249f);
        int i8 = c0077b.f1285c;
        C0300y c0300y2 = c0077b.f1286d;
        this.f1249f = c(i8, c0300y2).f1235a;
        f(c0077b);
        if (c0300y2 == null || !c0300y2.b()) {
            return;
        }
        long j8 = c0300y2.f5260d;
        if (b9 != null && b9.f1237c == j8 && (c0300y = b9.f1238d) != null && c0300y.f5258b == c0300y2.f5258b && c0300y.f5259c == c0300y2.f5259c) {
            return;
        }
        c(i8, new C0300y(c0300y2.f5257a, j8));
        this.f1247d.getClass();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002b A[Catch: all -> 0x0050, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0010, B:9:0x0014, B:11:0x0024, B:20:0x0036, B:22:0x0042, B:24:0x0048, B:14:0x002b, B:30:0x0053, B:32:0x005f, B:33:0x0063, B:35:0x0068, B:37:0x006e, B:39:0x0085, B:40:0x00b3, B:42:0x00b7, B:43:0x00be, B:45:0x00c8, B:47:0x00cc, B:49:0x00db, B:52:0x00e2), top: B:57:0x0001 }] */
    public final synchronized void f(C0077b c0077b) {
        long j8;
        this.f1247d.getClass();
        if (c0077b.f1284b.q()) {
            return;
        }
        C0300y c0300y = c0077b.f1286d;
        if (c0300y != null) {
            long j9 = c0300y.f5260d;
            B b8 = (B) this.f1246c.get(this.f1249f);
            if (b8 != null) {
                j8 = b8.f1237c;
                if (j8 == -1) {
                    j8 = this.f1250g + 1;
                }
            } else {
                j8 = this.f1250g + 1;
            }
            if (j9 < j8) {
                return;
            }
            B b9 = (B) this.f1246c.get(this.f1249f);
            if (b9 != null && b9.f1237c == -1 && b9.f1236b != c0077b.f1285c) {
                return;
            }
        }
        B bC = c(c0077b.f1285c, c0077b.f1286d);
        if (this.f1249f == null) {
            this.f1249f = bC.f1235a;
        }
        C0300y c0300y2 = c0077b.f1286d;
        if (c0300y2 != null && c0300y2.b()) {
            C0300y c0300y3 = c0077b.f1286d;
            B bC2 = c(c0077b.f1285c, new C0300y(c0300y3.f5257a, c0300y3.f5258b, c0300y3.f5260d));
            if (!bC2.f1239e) {
                bC2.f1239e = true;
                c0077b.f1284b.h(c0077b.f1286d.f5257a, this.f1245b);
                Math.max(0L, M.e0(this.f1245b.d(c0077b.f1286d.f5258b)) + M.e0(this.f1245b.f26829e));
                this.f1247d.getClass();
            }
        }
        if (!bC.f1239e) {
            bC.f1239e = true;
            this.f1247d.getClass();
        }
        if (bC.f1235a.equals(this.f1249f) && !bC.f1240f) {
            bC.f1240f = true;
            G g8 = this.f1247d;
            String str = bC.f1235a;
            F f8 = (F) g8;
            f8.getClass();
            C0300y c0300y4 = c0077b.f1286d;
            if (c0300y4 == null || !c0300y4.b()) {
                f8.b();
                f8.f1262j = str;
                f8.f1263k = E.i().setPlayerName("AndroidXMedia3").setPlayerVersion("1.8.0");
                f8.c(c0077b.f1284b, c0077b.f1286d);
            }
        }
    }

    public final synchronized void g(C0077b c0077b, int i8) {
        try {
            this.f1247d.getClass();
            boolean z7 = i8 == 0;
            Iterator it = this.f1246c.values().iterator();
            while (it.hasNext()) {
                B b8 = (B) it.next();
                if (b8.a(c0077b)) {
                    it.remove();
                    if (b8.f1239e) {
                        boolean zEquals = b8.f1235a.equals(this.f1249f);
                        if (z7 && zEquals) {
                            boolean z8 = b8.f1240f;
                        }
                        if (zEquals) {
                            a(b8);
                        }
                        ((F) this.f1247d).e(c0077b, b8.f1235a);
                    }
                }
            }
            e(c0077b);
        } catch (Throwable th) {
            throw th;
        }
    }
}
