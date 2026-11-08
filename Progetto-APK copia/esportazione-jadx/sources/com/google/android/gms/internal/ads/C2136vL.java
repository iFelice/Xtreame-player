package com.google.android.gms.internal.ads;

import android.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2136vL {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Random f21509h = new Random();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public InterfaceC2240xL f21513d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f21515f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2196we f21510a = new C2196we();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1521je f21511b = new C1521je();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f21512c = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AbstractC0774Ie f21514e = AbstractC0774Ie.f13891a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f21516g = -1;

    public final synchronized String a(AbstractC0774Ie abstractC0774Ie, C2190wN c2190wN) {
        return e(abstractC0774Ie.n(c2190wN.f21690a, this.f21511b).f19467c, c2190wN).f21218a;
    }

    public final synchronized void b(C1204dL c1204dL) {
        InterfaceC2240xL interfaceC2240xL;
        try {
            String str = this.f21515f;
            if (str != null) {
                C2084uL c2084uL = (C2084uL) this.f21512c.get(str);
                c2084uL.getClass();
                f(c2084uL);
            }
            Iterator it = this.f21512c.values().iterator();
            while (it.hasNext()) {
                C2084uL c2084uL2 = (C2084uL) it.next();
                it.remove();
                if (c2084uL2.f21222e && (interfaceC2240xL = this.f21513d) != null) {
                    ((C2188wL) interfaceC2240xL).d(c1204dL, c2084uL2.f21218a);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0029 A[Catch: all -> 0x004d, TryCatch #0 {all -> 0x004d, blocks: (B:3:0x0001, B:5:0x0006, B:8:0x0010, B:10:0x0014, B:12:0x0022, B:16:0x002e, B:18:0x0034, B:20:0x0040, B:22:0x0046, B:15:0x0029, B:27:0x0050, B:29:0x005c, B:30:0x0060, B:32:0x0065, B:34:0x006b, B:36:0x0080, B:37:0x00aa, B:39:0x00ae, B:40:0x00b0, B:42:0x00ba, B:44:0x00be, B:46:0x00cd, B:49:0x00d4), top: B:56:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0050 A[Catch: all -> 0x004d, TryCatch #0 {all -> 0x004d, blocks: (B:3:0x0001, B:5:0x0006, B:8:0x0010, B:10:0x0014, B:12:0x0022, B:16:0x002e, B:18:0x0034, B:20:0x0040, B:22:0x0046, B:15:0x0029, B:27:0x0050, B:29:0x005c, B:30:0x0060, B:32:0x0065, B:34:0x006b, B:36:0x0080, B:37:0x00aa, B:39:0x00ae, B:40:0x00b0, B:42:0x00ba, B:44:0x00be, B:46:0x00cd, B:49:0x00d4), top: B:56:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x005c A[Catch: all -> 0x004d, TryCatch #0 {all -> 0x004d, blocks: (B:3:0x0001, B:5:0x0006, B:8:0x0010, B:10:0x0014, B:12:0x0022, B:16:0x002e, B:18:0x0034, B:20:0x0040, B:22:0x0046, B:15:0x0029, B:27:0x0050, B:29:0x005c, B:30:0x0060, B:32:0x0065, B:34:0x006b, B:36:0x0080, B:37:0x00aa, B:39:0x00ae, B:40:0x00b0, B:42:0x00ba, B:44:0x00be, B:46:0x00cd, B:49:0x00d4), top: B:56:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0080 A[Catch: all -> 0x004d, TryCatch #0 {all -> 0x004d, blocks: (B:3:0x0001, B:5:0x0006, B:8:0x0010, B:10:0x0014, B:12:0x0022, B:16:0x002e, B:18:0x0034, B:20:0x0040, B:22:0x0046, B:15:0x0029, B:27:0x0050, B:29:0x005c, B:30:0x0060, B:32:0x0065, B:34:0x006b, B:36:0x0080, B:37:0x00aa, B:39:0x00ae, B:40:0x00b0, B:42:0x00ba, B:44:0x00be, B:46:0x00cd, B:49:0x00d4), top: B:56:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ae A[Catch: all -> 0x004d, TryCatch #0 {all -> 0x004d, blocks: (B:3:0x0001, B:5:0x0006, B:8:0x0010, B:10:0x0014, B:12:0x0022, B:16:0x002e, B:18:0x0034, B:20:0x0040, B:22:0x0046, B:15:0x0029, B:27:0x0050, B:29:0x005c, B:30:0x0060, B:32:0x0065, B:34:0x006b, B:36:0x0080, B:37:0x00aa, B:39:0x00ae, B:40:0x00b0, B:42:0x00ba, B:44:0x00be, B:46:0x00cd, B:49:0x00d4), top: B:56:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00d4 A[Catch: all -> 0x004d, TRY_LEAVE, TryCatch #0 {all -> 0x004d, blocks: (B:3:0x0001, B:5:0x0006, B:8:0x0010, B:10:0x0014, B:12:0x0022, B:16:0x002e, B:18:0x0034, B:20:0x0040, B:22:0x0046, B:15:0x0029, B:27:0x0050, B:29:0x005c, B:30:0x0060, B:32:0x0065, B:34:0x006b, B:36:0x0080, B:37:0x00aa, B:39:0x00ae, B:40:0x00b0, B:42:0x00ba, B:44:0x00be, B:46:0x00cd, B:49:0x00d4), top: B:56:0x0001 }] */
    public final synchronized void c(C1204dL c1204dL) {
        C2084uL c2084uLE;
        C2190wN c2190wN;
        String str;
        C2188wL c2188wL;
        C2190wN c2190wN2;
        C2084uL c2084uLE2;
        long j8;
        C2084uL c2084uL;
        try {
            this.f21513d.getClass();
            if (!c1204dL.f18323b.o()) {
                C2190wN c2190wN3 = c1204dL.f18325d;
                if (c2190wN3 == null) {
                    c2084uLE = e(c1204dL.f18324c, c1204dL.f18325d);
                    if (this.f21515f == null) {
                        this.f21515f = c2084uLE.f21218a;
                    }
                    c2190wN = c1204dL.f18325d;
                    if (c2190wN != null && c2190wN.b()) {
                        c2084uLE2 = e(c1204dL.f18324c, new C2190wN(c2190wN.f21690a, c2190wN.f21691b, c2190wN.f21693d));
                        if (!c2084uLE2.f21222e) {
                            c2084uLE2.f21222e = true;
                            c1204dL.f18323b.n(c1204dL.f18325d.f21690a, this.f21511b);
                            this.f21511b.f19470f.a(c1204dL.f18325d.f21691b).getClass();
                            Math.max(0L, Et.w(0L) + Et.w(0L));
                        }
                    }
                    if (!c2084uLE.f21222e) {
                        c2084uLE.f21222e = true;
                    }
                    if (c2084uLE.f21218a.equals(this.f21515f) && !c2084uLE.f21223f) {
                        c2084uLE.f21223f = true;
                        InterfaceC2240xL interfaceC2240xL = this.f21513d;
                        str = c2084uLE.f21218a;
                        c2188wL = (C2188wL) interfaceC2240xL;
                        c2188wL.getClass();
                        c2190wN2 = c1204dL.f18325d;
                        if (c2190wN2 != null || !c2190wN2.b()) {
                            c2188wL.f();
                            c2188wL.f21672O = str;
                            c2188wL.f21673P = C0.E.i().setPlayerName("AndroidXMedia3").setPlayerVersion("1.4.0");
                            c2188wL.g(c1204dL.f18323b, c1204dL.f18325d);
                        }
                    }
                } else {
                    C2084uL c2084uL2 = (C2084uL) this.f21512c.get(this.f21515f);
                    if (c2084uL2 != null) {
                        j8 = c2084uL2.f21220c;
                        if (j8 == -1) {
                            j8 = this.f21516g + 1;
                        }
                    } else {
                        j8 = this.f21516g + 1;
                    }
                    if (c2190wN3.f21693d >= j8 && ((c2084uL = (C2084uL) this.f21512c.get(this.f21515f)) == null || c2084uL.f21220c != -1 || c2084uL.f21219b == c1204dL.f18324c)) {
                        c2084uLE = e(c1204dL.f18324c, c1204dL.f18325d);
                        if (this.f21515f == null) {
                            this.f21515f = c2084uLE.f21218a;
                        }
                        c2190wN = c1204dL.f18325d;
                        if (c2190wN != null) {
                            c2084uLE2 = e(c1204dL.f18324c, new C2190wN(c2190wN.f21690a, c2190wN.f21691b, c2190wN.f21693d));
                            if (!c2084uLE2.f21222e) {
                                c2084uLE2.f21222e = true;
                                c1204dL.f18323b.n(c1204dL.f18325d.f21690a, this.f21511b);
                                this.f21511b.f19470f.a(c1204dL.f18325d.f21691b).getClass();
                                Math.max(0L, Et.w(0L) + Et.w(0L));
                            }
                        }
                        if (!c2084uLE.f21222e) {
                            c2084uLE.f21222e = true;
                        }
                        if (c2084uLE.f21218a.equals(this.f21515f)) {
                            c2084uLE.f21223f = true;
                            InterfaceC2240xL interfaceC2240xL2 = this.f21513d;
                            str = c2084uLE.f21218a;
                            c2188wL = (C2188wL) interfaceC2240xL2;
                            c2188wL.getClass();
                            c2190wN2 = c1204dL.f18325d;
                            if (c2190wN2 != null) {
                                c2188wL.f();
                                c2188wL.f21672O = str;
                                c2188wL.f21673P = C0.E.i().setPlayerName("AndroidXMedia3").setPlayerVersion("1.4.0");
                                c2188wL.g(c1204dL.f18323b, c1204dL.f18325d);
                            } else {
                                c2188wL.f();
                                c2188wL.f21672O = str;
                                c2188wL.f21673P = C0.E.i().setPlayerName("AndroidXMedia3").setPlayerVersion("1.4.0");
                                c2188wL.g(c1204dL.f18323b, c1204dL.f18325d);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d(C1204dL c1204dL, int i8) {
        try {
            this.f21513d.getClass();
            Iterator it = this.f21512c.values().iterator();
            while (it.hasNext()) {
                C2084uL c2084uL = (C2084uL) it.next();
                if (c2084uL.a(c1204dL)) {
                    it.remove();
                    if (c2084uL.f21222e) {
                        if (c2084uL.f21218a.equals(this.f21515f)) {
                            f(c2084uL);
                        }
                        ((C2188wL) this.f21513d).d(c1204dL, c2084uL.f21218a);
                    }
                }
            }
            g(c1204dL);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0045  */
    /* JADX WARN: Code duplicated, block: B:39:0x0086  */
    /* JADX WARN: Code duplicated, block: B:55:0x0098 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    public final C2084uL e(int i8, C2190wN c2190wN) {
        long j8;
        long j9;
        HashMap map = this.f21512c;
        long j10 = Long.MAX_VALUE;
        C2084uL c2084uL = null;
        for (C2084uL c2084uL2 : map.values()) {
            if (c2084uL2.f21220c == -1 && i8 == c2084uL2.f21219b && c2190wN != null) {
                C2136vL c2136vL = c2084uL2.f21224g;
                C2084uL c2084uL3 = (C2084uL) c2136vL.f21512c.get(c2136vL.f21515f);
                if (c2084uL3 != null) {
                    j9 = c2084uL3.f21220c;
                    if (j9 == -1) {
                        j9 = 1 + c2136vL.f21516g;
                    }
                } else {
                    j9 = 1 + c2136vL.f21516g;
                }
                long j11 = c2190wN.f21693d;
                if (j11 >= j9) {
                    c2084uL2.f21220c = j11;
                }
            }
            C2190wN c2190wN2 = c2084uL2.f21221d;
            if (c2190wN != null) {
                long j12 = c2190wN.f21693d;
                if (c2190wN2 == null) {
                    if (!c2190wN.b() && j12 == c2084uL2.f21220c) {
                        j8 = c2084uL2.f21220c;
                        if (j8 != -1) {
                        }
                        c2084uL = c2084uL2;
                        j10 = j8;
                    }
                } else if (j12 == c2190wN2.f21693d && c2190wN.f21691b == c2190wN2.f21691b && c2190wN.f21692c == c2190wN2.f21692c) {
                    j8 = c2084uL2.f21220c;
                    if (j8 != -1) {
                    }
                    c2084uL = c2084uL2;
                    j10 = j8;
                }
            } else if (i8 == c2084uL2.f21219b) {
                j8 = c2084uL2.f21220c;
                if (j8 != -1 || j8 < j10) {
                    c2084uL = c2084uL2;
                    j10 = j8;
                } else if (j8 == j10) {
                    int i9 = Et.f13234a;
                    if (c2084uL.f21221d != null && c2190wN2 != null) {
                        c2084uL = c2084uL2;
                    }
                }
            }
        }
        if (c2084uL != null) {
            return c2084uL;
        }
        byte[] bArr = new byte[12];
        f21509h.nextBytes(bArr);
        String strEncodeToString = Base64.encodeToString(bArr, 10);
        C2084uL c2084uL4 = new C2084uL(this, strEncodeToString, i8, c2190wN);
        map.put(strEncodeToString, c2084uL4);
        return c2084uL4;
    }

    public final void f(C2084uL c2084uL) {
        long j8 = c2084uL.f21220c;
        if (j8 != -1) {
            this.f21516g = j8;
        }
        this.f21515f = null;
    }

    public final void g(C1204dL c1204dL) {
        C2190wN c2190wN;
        boolean zO = c1204dL.f18323b.o();
        HashMap map = this.f21512c;
        if (zO) {
            String str = this.f21515f;
            if (str != null) {
                C2084uL c2084uL = (C2084uL) map.get(str);
                c2084uL.getClass();
                f(c2084uL);
                return;
            }
            return;
        }
        C2084uL c2084uL2 = (C2084uL) map.get(this.f21515f);
        int i8 = c1204dL.f18324c;
        C2190wN c2190wN2 = c1204dL.f18325d;
        this.f21515f = e(i8, c2190wN2).f21218a;
        c(c1204dL);
        if (c2190wN2 == null || !c2190wN2.b()) {
            return;
        }
        long j8 = c2190wN2.f21693d;
        if (c2084uL2 != null && c2084uL2.f21220c == j8 && (c2190wN = c2084uL2.f21221d) != null && c2190wN.f21691b == c2190wN2.f21691b && c2190wN.f21692c == c2190wN2.f21692c) {
            return;
        }
        e(i8, new C2190wN(c2190wN2.f21690a, j8));
    }
}
