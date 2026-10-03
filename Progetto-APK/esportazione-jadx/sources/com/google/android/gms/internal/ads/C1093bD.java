package com.google.android.gms.internal.ads;

import Y5.C0416c;
import Z3.C0427i;
import Z3.RunnableC0439v;
import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.internal.C0641q;
import com.google.android.gms.common.internal.C0643t;
import com.google.android.gms.common.internal.C0645v;
import com.google.android.gms.common.internal.InterfaceC0644u;
import com.google.android.gms.internal.cast.C2482p;
import com.google.android.gms.internal.measurement.C2531b;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import p021c4.C0574d1;
import p021c4.C0575e;
import p021c4.C0597l0;
import p021c4.C0602o;
import p079k.RunnableC3015g;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C1093bD implements p148t.j, Z3.W, p021c4.M0, p021c4.U, p052g4.d {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static C1093bD f18024K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18025G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f18026H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f18027I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f18028J;

    public /* synthetic */ C1093bD(int i8, int i9) {
        this.f18025G = i8;
        this.f18028J = null;
        this.f18026H = null;
        this.f18027I = null;
    }

    public static int g(int i8, int i9, p176w5.a aVar) {
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            if (aVar.d(i8 + i11)) {
                i10 |= 1 << ((i9 - i11) - 1);
            }
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002a A[Catch: all -> 0x001f, TryCatch #1 {all -> 0x001f, blocks: (B:6:0x001c, B:21:0x0071, B:24:0x0095, B:13:0x002a, B:15:0x0053, B:17:0x005e, B:19:0x0069, B:20:0x006d), top: B:53:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0053 A[Catch: all -> 0x001f, TryCatch #1 {all -> 0x001f, blocks: (B:6:0x001c, B:21:0x0071, B:24:0x0095, B:13:0x002a, B:15:0x0053, B:17:0x005e, B:19:0x0069, B:20:0x006d), top: B:53:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:17:0x005e A[Catch: all -> 0x001f, TryCatch #1 {all -> 0x001f, blocks: (B:6:0x001c, B:21:0x0071, B:24:0x0095, B:13:0x002a, B:15:0x0053, B:17:0x005e, B:19:0x0069, B:20:0x006d), top: B:53:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0069 A[Catch: all -> 0x001f, TryCatch #1 {all -> 0x001f, blocks: (B:6:0x001c, B:21:0x0071, B:24:0x0095, B:13:0x002a, B:15:0x0053, B:17:0x005e, B:19:0x0069, B:20:0x006d), top: B:53:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:20:0x006d A[Catch: all -> 0x001f, TryCatch #1 {all -> 0x001f, blocks: (B:6:0x001c, B:21:0x0071, B:24:0x0095, B:13:0x002a, B:15:0x0053, B:17:0x005e, B:19:0x0069, B:20:0x006d), top: B:53:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0071 A[Catch: all -> 0x001f, PHI: r11
      0x0071: PHI (r11v17 int) = (r11v14 int), (r11v0 int) binds: [B:12:0x0028, B:10:0x0024] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {all -> 0x001f, blocks: (B:6:0x001c, B:21:0x0071, B:24:0x0095, B:13:0x002a, B:15:0x0053, B:17:0x005e, B:19:0x0069, B:20:0x006d), top: B:53:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0094  */
    /* JADX WARN: Code duplicated, block: B:38:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:39:0x00fc A[PHI: r11
      0x00fc: PHI (r11v8 int) = (r11v1 int), (r11v0 int) binds: [B:37:0x00e1, B:35:0x00dd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:41:0x0132  */
    /* JADX WARN: Code duplicated, block: B:42:0x0135  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p021c4.M0
    public final void a(String str, int i8, Throwable th, byte[] bArr, Map map) {
        p021c4.Q0 q7;
        p021c4.W w7;
        C0602o c0602o;
        String strSubstring;
        Object obj;
        switch (this.f18025G) {
            case 14:
                p021c4.K0 k8 = (p021c4.K0) this.f18028J;
                k8.m();
                p021c4.r1 r1Var = (p021c4.r1) this.f18027I;
                if (i8 == 200 || i8 == 204) {
                    if (th == null) {
                        p021c4.T t7 = ((C0597l0) k8.f10616G).f11258O;
                        C0597l0.k(t7);
                        t7.f11047T.b(Long.valueOf(r1Var.f11349G), "[sgtm] Upload succeeded for row_id");
                        q7 = p021c4.Q0.SUCCESS;
                    } else {
                        p021c4.T t8 = ((C0597l0) k8.f10616G).f11258O;
                        C0597l0.k(t8);
                        t8.f11042O.d(Long.valueOf(r1Var.f11349G), Integer.valueOf(i8), th, "[sgtm] Upload failed for row_id. response, exception");
                        if (Arrays.asList(((String) p021c4.E.f10823u.a(null)).split(",")).contains(String.valueOf(i8))) {
                            q7 = p021c4.Q0.BACKOFF;
                        } else {
                            q7 = p021c4.Q0.FAILURE;
                        }
                    }
                } else if (i8 == 304) {
                    i8 = 304;
                    if (th == null) {
                        p021c4.T t9 = ((C0597l0) k8.f10616G).f11258O;
                        C0597l0.k(t9);
                        t9.f11047T.b(Long.valueOf(r1Var.f11349G), "[sgtm] Upload succeeded for row_id");
                        q7 = p021c4.Q0.SUCCESS;
                    } else {
                        p021c4.T t10 = ((C0597l0) k8.f10616G).f11258O;
                        C0597l0.k(t10);
                        t10.f11042O.d(Long.valueOf(r1Var.f11349G), Integer.valueOf(i8), th, "[sgtm] Upload failed for row_id. response, exception");
                        if (Arrays.asList(((String) p021c4.E.f10823u.a(null)).split(",")).contains(String.valueOf(i8))) {
                            q7 = p021c4.Q0.BACKOFF;
                        } else {
                            q7 = p021c4.Q0.FAILURE;
                        }
                    }
                } else {
                    p021c4.T t11 = ((C0597l0) k8.f10616G).f11258O;
                    C0597l0.k(t11);
                    t11.f11042O.d(Long.valueOf(r1Var.f11349G), Integer.valueOf(i8), th, "[sgtm] Upload failed for row_id. response, exception");
                    if (Arrays.asList(((String) p021c4.E.f10823u.a(null)).split(",")).contains(String.valueOf(i8))) {
                        q7 = p021c4.Q0.BACKOFF;
                    } else {
                        q7 = p021c4.Q0.FAILURE;
                    }
                }
                AtomicReference atomicReference = (AtomicReference) this.f18026H;
                C0574d1 c0574d1R = ((C0597l0) k8.f10616G).r();
                long j8 = r1Var.f11349G;
                C0575e c0575e = new C0575e(q7.f11020G, j8, r1Var.f11354L);
                c0574d1R.m();
                c0574d1R.n();
                c0574d1R.E(new RunnableC0439v(c0574d1R, c0574d1R.B(true), c0575e, 8));
                p021c4.T t12 = ((C0597l0) k8.f10616G).f11258O;
                C0597l0.k(t12);
                t12.f11047T.c(Long.valueOf(j8), q7, "[sgtm] Updated status for row_id");
                synchronized (atomicReference) {
                    atomicReference.set(q7);
                    atomicReference.notifyAll();
                    break;
                }
                return;
            case 15:
                ((p021c4.A1) this.f18027I).r(true, i8, th, bArr, (String) this.f18028J, (List) this.f18026H);
                return;
            default:
                p021c4.C1 c8 = (p021c4.C1) this.f18026H;
                p021c4.A1 a8 = (p021c4.A1) this.f18027I;
                String str2 = (String) this.f18028J;
                com.google.protobuf.U2.t(a8);
                if (bArr == null) {
                    try {
                        bArr = new byte[0];
                    } finally {
                        a8.f10672a0 = false;
                        a8.z();
                    }
                }
                if (i8 == 200) {
                    if (th == null) {
                        C0602o c0602o2 = a8.f10654I;
                        p021c4.A1.I(c0602o2);
                        c0602o2.B(Long.valueOf(c8.f10693a));
                        a8.b().f11047T.c(str2, Integer.valueOf(i8), "Successfully uploaded batch from upload queue. appId, status");
                        if (a8.c0().B(null, p021c4.E.f10739N0)) {
                            w7 = a8.f10653H;
                            p021c4.A1.I(w7);
                            if (w7.r()) {
                                c0602o = a8.f10654I;
                                p021c4.A1.I(c0602o);
                                if (c0602o.M(str2)) {
                                    a8.V(str2);
                                } else {
                                    a8.C();
                                }
                            } else {
                                a8.C();
                            }
                        } else {
                            a8.C();
                        }
                    } else {
                        String str3 = new String(bArr, StandardCharsets.UTF_8);
                        strSubstring = str3.substring(0, Math.min(32, str3.length()));
                        p021c4.Q q8 = a8.b().f11044Q;
                        Integer numValueOf = Integer.valueOf(i8);
                        obj = th;
                        if (th == null) {
                            obj = strSubstring;
                        }
                        q8.d(str2, numValueOf, obj, "Network upload failed. Will retry later. appId, status, error");
                        C0602o c0602o3 = a8.f10654I;
                        p021c4.A1.I(c0602o3);
                        c0602o3.E(Long.valueOf(c8.f10693a));
                        a8.C();
                    }
                } else if (i8 == 204) {
                    i8 = 204;
                    if (th == null) {
                        C0602o c0602o4 = a8.f10654I;
                        p021c4.A1.I(c0602o4);
                        c0602o4.B(Long.valueOf(c8.f10693a));
                        a8.b().f11047T.c(str2, Integer.valueOf(i8), "Successfully uploaded batch from upload queue. appId, status");
                        if (a8.c0().B(null, p021c4.E.f10739N0)) {
                            w7 = a8.f10653H;
                            p021c4.A1.I(w7);
                            if (w7.r()) {
                                c0602o = a8.f10654I;
                                p021c4.A1.I(c0602o);
                                if (c0602o.M(str2)) {
                                    a8.V(str2);
                                } else {
                                    a8.C();
                                }
                            } else {
                                a8.C();
                            }
                        } else {
                            a8.C();
                        }
                    } else {
                        String str4 = new String(bArr, StandardCharsets.UTF_8);
                        strSubstring = str4.substring(0, Math.min(32, str4.length()));
                        p021c4.Q q9 = a8.b().f11044Q;
                        Integer numValueOf2 = Integer.valueOf(i8);
                        obj = th;
                        if (th == null) {
                            obj = strSubstring;
                        }
                        q9.d(str2, numValueOf2, obj, "Network upload failed. Will retry later. appId, status, error");
                        C0602o c0602o5 = a8.f10654I;
                        p021c4.A1.I(c0602o5);
                        c0602o5.E(Long.valueOf(c8.f10693a));
                        a8.C();
                    }
                } else {
                    String str5 = new String(bArr, StandardCharsets.UTF_8);
                    strSubstring = str5.substring(0, Math.min(32, str5.length()));
                    p021c4.Q q10 = a8.b().f11044Q;
                    Integer numValueOf3 = Integer.valueOf(i8);
                    obj = th;
                    if (th == null) {
                        obj = strSubstring;
                    }
                    q10.d(str2, numValueOf3, obj, "Network upload failed. Will retry later. appId, status, error");
                    C0602o c0602o6 = a8.f10654I;
                    p021c4.A1.I(c0602o6);
                    c0602o6.E(Long.valueOf(c8.f10693a));
                    a8.C();
                }
                return;
        }
    }

    @Override // p148t.j
    public final Object b(p148t.i iVar) {
        C2482p c2482p = (C2482p) this.f18028J;
        E1.F f8 = (E1.F) this.f18026H;
        E1.F f9 = (E1.F) this.f18027I;
        c2482p.getClass();
        return Boolean.valueOf(c2482p.f22767b.post(new RunnableC3015g(c2482p, f8, f9, iVar, 8, 0)));
    }

    public final String c(int i8, StringBuilder sb) throws p130q5.e {
        String str = null;
        while (true) {
            F5.j jVarD = d(i8, str);
            String strA = F5.l.a(jVarD.f3255c);
            if (strA != null) {
                sb.append(strA);
            }
            String strValueOf = jVarD.f3257e ? String.valueOf(jVarD.f3256d) : null;
            int i9 = jVarD.f29448b;
            if (i8 == i9) {
                return sb.toString();
            }
            i8 = i9;
            str = strValueOf;
        }
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        switch (this.f18025G) {
            case 11:
                C1093bD c1093bD = new C1093bD(((C2531b) this.f18028J).clone());
                Iterator it = ((List) this.f18027I).iterator();
                while (it.hasNext()) {
                    ((List) c1093bD.f18027I).add(((C2531b) it.next()).clone());
                }
                return c1093bD;
            default:
                return super.clone();
        }
    }

    /* JADX WARN: Code duplicated, block: B:153:0x0300  */
    /* JADX WARN: Code duplicated, block: B:155:0x0306  */
    /* JADX WARN: Code duplicated, block: B:156:0x0312  */
    /* JADX WARN: Code duplicated, block: B:157:0x0321  */
    /* JADX WARN: Code duplicated, block: B:161:0x0341  */
    /* JADX WARN: Code duplicated, block: B:162:0x0353  */
    /* JADX WARN: Code duplicated, block: B:165:0x036c  */
    /* JADX WARN: Code duplicated, block: B:168:0x038e A[LOOP:3: B:137:0x02bb->B:168:0x038e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:172:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:174:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:176:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:179:0x03bc A[LOOP:4: B:173:0x03a9->B:179:0x03bc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:190:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:214:0x0375 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x033f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:218:0x03ca A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x03bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:0x03bf A[SYNTHETIC] */
    public final F5.j d(int i8, String str) throws p130q5.e {
        int i9;
        P0.j jVar;
        int i10;
        int i11;
        p176w5.a aVar;
        boolean z7;
        int i12;
        int i13;
        F5.k kVar;
        Object obj;
        int i14;
        int i15;
        F5.j jVar2;
        P0.j jVar3;
        int iF;
        boolean z8;
        int iF2;
        int iF3;
        int iF4;
        char c8;
        F5.i iVar;
        F5.i iVar2;
        int i16;
        int iF5;
        int iF6;
        char c9;
        F5.i iVar3;
        F5.i iVar4;
        ((StringBuilder) this.f18027I).setLength(0);
        if (str != null) {
            ((StringBuilder) this.f18027I).append(str);
        }
        ((K.k) this.f18026H).f4294H = i8;
        do {
            K.k kVar2 = (K.k) this.f18026H;
            int i17 = kVar2.f4294H;
            F5.h hVar = (F5.h) kVar2.f4295I;
            F5.h hVar2 = F5.h.f3251H;
            F5.h hVar3 = F5.h.f3252I;
            F5.h hVar4 = F5.h.f3250G;
            boolean z9 = true;
            int i18 = 16;
            if (hVar != hVar2) {
                if (hVar == hVar3) {
                    while (true) {
                        int i19 = ((K.k) this.f18026H).f4294H;
                        if (i19 + 5 <= ((p176w5.a) this.f18028J).f31090H && (((iF2 = f(i19, 5)) >= 5 && iF2 < i18) || (i19 + 7 <= ((p176w5.a) this.f18028J).f31090H && (((iF3 = f(i19, 7)) >= 64 && iF3 < 116) || (i19 + 8 <= ((p176w5.a) this.f18028J).f31090H && (iF4 = f(i19, 8)) >= 232 && iF4 < 253))))) {
                            int i20 = ((K.k) this.f18026H).f4294H;
                            int iF7 = f(i20, 5);
                            if (iF7 == 15) {
                                iVar2 = new F5.i('$', i20 + 5);
                            } else {
                                if (iF7 < 5 || iF7 >= 15) {
                                    int iF8 = f(i20, 7);
                                    if (iF8 >= 64 && iF8 < 90) {
                                        iVar = new F5.i((char) (iF8 + 1), i20 + 7);
                                    } else if (iF8 < 90 || iF8 >= 116) {
                                        switch (f(i20, 8)) {
                                            case 232:
                                                c8 = '!';
                                                break;
                                            case 233:
                                                c8 = '\"';
                                                break;
                                            case 234:
                                                c8 = '%';
                                                break;
                                            case 235:
                                                c8 = '&';
                                                break;
                                            case 236:
                                                c8 = '\'';
                                                break;
                                            case 237:
                                                c8 = '(';
                                                break;
                                            case 238:
                                                c8 = ')';
                                                break;
                                            case 239:
                                                c8 = '*';
                                                break;
                                            case 240:
                                                c8 = '+';
                                                break;
                                            case 241:
                                                c8 = ',';
                                                break;
                                            case 242:
                                                c8 = '-';
                                                break;
                                            case 243:
                                                c8 = '.';
                                                break;
                                            case 244:
                                                c8 = '/';
                                                break;
                                            case 245:
                                                c8 = ':';
                                                break;
                                            case 246:
                                                c8 = ';';
                                                break;
                                            case 247:
                                                c8 = '<';
                                                break;
                                            case 248:
                                                c8 = '=';
                                                break;
                                            case 249:
                                                c8 = '>';
                                                break;
                                            case 250:
                                                c8 = '?';
                                                break;
                                            case 251:
                                                c8 = '_';
                                                break;
                                            case 252:
                                                c8 = ' ';
                                                break;
                                            default:
                                                throw p130q5.e.a();
                                        }
                                        iVar = new F5.i(c8, i20 + 8);
                                    } else {
                                        iVar = new F5.i((char) (iF8 + 7), i20 + 7);
                                    }
                                } else {
                                    iVar = new F5.i((char) (iF7 + 43), i20 + 5);
                                }
                                iVar2 = iVar;
                            }
                            Object obj2 = this.f18026H;
                            ((K.k) obj2).f4294H = iVar2.f29448b;
                            char c10 = iVar2.f3254c;
                            if (c10 == '$') {
                                jVar = new P0.j(new F5.j(((K.k) obj2).f4294H, ((StringBuilder) this.f18027I).toString()), z9);
                            } else {
                                ((StringBuilder) this.f18027I).append(c10);
                                i18 = 16;
                            }
                        } else {
                            if (h(((K.k) this.f18026H).f4294H)) {
                                Object obj3 = this.f18026H;
                                ((K.k) obj3).f4294H += 3;
                                ((K.k) obj3).f4295I = hVar4;
                            } else if (i(((K.k) this.f18026H).f4294H)) {
                                Object obj4 = this.f18026H;
                                K.k kVar3 = (K.k) obj4;
                                int i21 = kVar3.f4294H;
                                int i22 = i21 + 5;
                                int i23 = ((p176w5.a) this.f18028J).f31090H;
                                if (i22 < i23) {
                                    kVar3.f4294H = i21 + 5;
                                } else {
                                    kVar3.f4294H = i23;
                                }
                                ((K.k) obj4).f4295I = hVar2;
                            }
                            jVar = new P0.j((Object) null, false);
                        }
                    }
                    z8 = jVar.f5729G;
                } else {
                    while (true) {
                        int i24 = ((K.k) this.f18026H).f4294H;
                        int i25 = i24 + 7;
                        int i26 = ((p176w5.a) this.f18028J).f31090H;
                        if (i25 <= i26) {
                            int i27 = i24;
                            while (true) {
                                int i28 = i24 + 3;
                                if (i27 < i28) {
                                    if (!((p176w5.a) this.f18028J).d(i27)) {
                                        i27++;
                                    }
                                } else if (!((p176w5.a) this.f18028J).d(i28)) {
                                    i9 = ((K.k) this.f18026H).f4294H;
                                    if (i9 + 1 <= ((p176w5.a) this.f18028J).f31090H) {
                                        i10 = 0;
                                        while (true) {
                                            if (i10 < 4) {
                                                i11 = i10 + i9;
                                                aVar = (p176w5.a) this.f18028J;
                                                if (i11 < aVar.f31090H) {
                                                    if (aVar.d(i11)) {
                                                        i10++;
                                                    }
                                                }
                                            }
                                            K.k kVar4 = (K.k) this.f18026H;
                                            kVar4.f4295I = hVar2;
                                            kVar4.f4294H += 4;
                                        }
                                    }
                                    jVar = new P0.j((Object) null, false);
                                }
                                i12 = ((K.k) this.f18026H).f4294H;
                                i13 = i12 + 7;
                                if (i13 > ((p176w5.a) this.f18028J).f31090H) {
                                    iF = f(i12, 4);
                                    if (iF == 0) {
                                        kVar = new F5.k(((p176w5.a) this.f18028J).f31090H, 10, 10);
                                    } else {
                                        kVar = new F5.k(((p176w5.a) this.f18028J).f31090H, iF - 1, 10);
                                    }
                                } else {
                                    int iF9 = f(i12, 7) - 8;
                                    kVar = new F5.k(i13, iF9 / 11, iF9 % 11);
                                }
                                obj = this.f18026H;
                                ((K.k) obj).f4294H = kVar.f29448b;
                                i14 = kVar.f3259d;
                                i15 = kVar.f3258c;
                                if (i15 == 10) {
                                    if (i14 == 10) {
                                        jVar2 = new F5.j(((K.k) obj).f4294H, ((StringBuilder) this.f18027I).toString());
                                    } else {
                                        jVar2 = new F5.j(((K.k) obj).f4294H, i14, ((StringBuilder) this.f18027I).toString());
                                    }
                                    jVar3 = new P0.j(jVar2, z9);
                                } else {
                                    ((StringBuilder) this.f18027I).append(i15);
                                    if (i14 == 10) {
                                        jVar3 = new P0.j(new F5.j(((K.k) this.f18026H).f4294H, ((StringBuilder) this.f18027I).toString()), z9);
                                    } else {
                                        ((StringBuilder) this.f18027I).append(i14);
                                    }
                                }
                                jVar = jVar3;
                            }
                        } else if (i24 + 4 <= i26) {
                            i12 = ((K.k) this.f18026H).f4294H;
                            i13 = i12 + 7;
                            if (i13 > ((p176w5.a) this.f18028J).f31090H) {
                                iF = f(i12, 4);
                                if (iF == 0) {
                                    kVar = new F5.k(((p176w5.a) this.f18028J).f31090H, 10, 10);
                                } else {
                                    kVar = new F5.k(((p176w5.a) this.f18028J).f31090H, iF - 1, 10);
                                }
                            } else {
                                int iF10 = f(i12, 7) - 8;
                                kVar = new F5.k(i13, iF10 / 11, iF10 % 11);
                            }
                            obj = this.f18026H;
                            ((K.k) obj).f4294H = kVar.f29448b;
                            i14 = kVar.f3259d;
                            i15 = kVar.f3258c;
                            if (i15 == 10) {
                                if (i14 == 10) {
                                    jVar2 = new F5.j(((K.k) obj).f4294H, ((StringBuilder) this.f18027I).toString());
                                } else {
                                    jVar2 = new F5.j(((K.k) obj).f4294H, i14, ((StringBuilder) this.f18027I).toString());
                                }
                                jVar3 = new P0.j(jVar2, z9);
                            } else {
                                ((StringBuilder) this.f18027I).append(i15);
                                if (i14 == 10) {
                                    jVar3 = new P0.j(new F5.j(((K.k) this.f18026H).f4294H, ((StringBuilder) this.f18027I).toString()), z9);
                                } else {
                                    ((StringBuilder) this.f18027I).append(i14);
                                }
                            }
                            jVar = jVar3;
                        } else {
                            i9 = ((K.k) this.f18026H).f4294H;
                            if (i9 + 1 <= ((p176w5.a) this.f18028J).f31090H) {
                                i10 = 0;
                                while (true) {
                                    if (i10 < 4) {
                                        i11 = i10 + i9;
                                        aVar = (p176w5.a) this.f18028J;
                                        if (i11 < aVar.f31090H) {
                                            if (aVar.d(i11)) {
                                                i10++;
                                            }
                                        }
                                    }
                                    K.k kVar5 = (K.k) this.f18026H;
                                    kVar5.f4295I = hVar2;
                                    kVar5.f4294H += 4;
                                }
                            }
                            jVar = new P0.j((Object) null, false);
                        }
                        z7 = jVar.f5729G;
                    }
                }
                i16 = ((K.k) this.f18026H).f4294H;
                if (i17 == i16 && !z7) {
                }
                F5.j jVar4 = (F5.j) jVar.f5730H;
                return (jVar4 == null && jVar4.f3257e) ? new F5.j(i16, jVar4.f3256d, ((StringBuilder) this.f18027I).toString()) : new F5.j(i16, ((StringBuilder) this.f18027I).toString());
            }
            while (true) {
                int i29 = ((K.k) this.f18026H).f4294H;
                if (i29 + 5 <= ((p176w5.a) this.f18028J).f31090H && (((iF5 = f(i29, 5)) >= 5 && iF5 < 16) || (i29 + 6 <= ((p176w5.a) this.f18028J).f31090H && (iF6 = f(i29, 6)) >= 16 && iF6 < 63))) {
                    int i30 = ((K.k) this.f18026H).f4294H;
                    int iF11 = f(i30, 5);
                    if (iF11 == 15) {
                        iVar4 = new F5.i('$', i30 + 5);
                    } else {
                        if (iF11 < 5 || iF11 >= 15) {
                            int iF12 = f(i30, 6);
                            if (iF12 < 32 || iF12 >= 58) {
                                switch (iF12) {
                                    case 58:
                                        c9 = '*';
                                        break;
                                    case 59:
                                        c9 = ',';
                                        break;
                                    case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                        c9 = '-';
                                        break;
                                    case 61:
                                        c9 = '.';
                                        break;
                                    case 62:
                                        c9 = '/';
                                        break;
                                    default:
                                        throw new IllegalStateException("Decoding invalid alphanumeric value: ".concat(String.valueOf(iF12)));
                                }
                                iVar3 = new F5.i(c9, i30 + 6);
                            } else {
                                iVar3 = new F5.i((char) (iF12 + 33), i30 + 6);
                            }
                        } else {
                            iVar3 = new F5.i((char) (iF11 + 43), i30 + 5);
                        }
                        iVar4 = iVar3;
                    }
                    Object obj5 = this.f18026H;
                    ((K.k) obj5).f4294H = iVar4.f29448b;
                    char c11 = iVar4.f3254c;
                    if (c11 == '$') {
                        jVar = new P0.j(new F5.j(((K.k) obj5).f4294H, ((StringBuilder) this.f18027I).toString()), z9);
                    } else {
                        ((StringBuilder) this.f18027I).append(c11);
                    }
                } else {
                    if (h(((K.k) this.f18026H).f4294H)) {
                        Object obj6 = this.f18026H;
                        ((K.k) obj6).f4294H += 3;
                        ((K.k) obj6).f4295I = hVar4;
                    } else if (i(((K.k) this.f18026H).f4294H)) {
                        Object obj7 = this.f18026H;
                        K.k kVar6 = (K.k) obj7;
                        int i31 = kVar6.f4294H;
                        int i32 = i31 + 5;
                        int i33 = ((p176w5.a) this.f18028J).f31090H;
                        if (i32 < i33) {
                            kVar6.f4294H = i31 + 5;
                        } else {
                            kVar6.f4294H = i33;
                        }
                        ((K.k) obj7).f4295I = hVar3;
                    }
                    jVar = new P0.j((Object) null, false);
                }
            }
            z8 = jVar.f5729G;
            z7 = z8;
            i16 = ((K.k) this.f18026H).f4294H;
            if (i17 == i16) {
                F5.j jVar5 = (F5.j) jVar.f5730H;
                if (jVar5 == null) {
                }
            }
        } while (!z7);
        F5.j jVar6 = (F5.j) jVar.f5730H;
        if (jVar6 == null) {
        }
    }

    public final void e(X2.a aVar, ByteArrayOutputStream byteArrayOutputStream) {
        Map map = (Map) this.f18028J;
        S4.f fVar = new S4.f(byteArrayOutputStream, map, (Map) this.f18026H, (P4.d) this.f18027I);
        P4.d dVar = (P4.d) map.get(X2.a.class);
        if (dVar != null) {
            dVar.a(aVar, fVar);
        } else {
            throw new P4.b("No encoder for " + X2.a.class);
        }
    }

    public final int f(int i8, int i9) {
        return g(i8, i9, (p176w5.a) this.f18028J);
    }

    public final boolean h(int i8) {
        int i9 = i8 + 3;
        if (i9 > ((p176w5.a) this.f18028J).f31090H) {
            return false;
        }
        while (i8 < i9) {
            if (((p176w5.a) this.f18028J).d(i8)) {
                return false;
            }
            i8++;
        }
        return true;
    }

    public final boolean i(int i8) {
        if (i8 + 1 > ((p176w5.a) this.f18028J).f31090H) {
            return false;
        }
        for (int i9 = 0; i9 < 5; i9++) {
            int i10 = i9 + i8;
            Object obj = this.f18028J;
            if (i10 >= ((p176w5.a) obj).f31090H) {
                return true;
            }
            if (i9 == 2) {
                if (!((p176w5.a) obj).d(i8 + 2)) {
                    return false;
                }
            } else if (((p176w5.a) obj).d(i10)) {
                return false;
            }
        }
        return true;
    }

    public final boolean j(int i8, int i9, int i10, int i11) {
        if (i8 < 0) {
            i8 += i10;
            i9 += 4 - ((i10 + 4) & 7);
        }
        if (i9 < 0) {
            i9 += i11;
            i8 += 4 - ((i11 + 4) & 7);
        }
        ((p176w5.b) this.f18026H).f(i9, i8);
        return ((p176w5.b) this.f18028J).b(i9, i8);
    }

    public final int k(int i8, int i9, int i10, int i11) {
        int i12 = i8 - 2;
        int i13 = i9 - 2;
        int i14 = (j(i12, i13, i10, i11) ? 1 : 0) << 1;
        int i15 = i9 - 1;
        if (j(i12, i15, i10, i11)) {
            i14 |= 1;
        }
        int i16 = i14 << 1;
        int i17 = i8 - 1;
        if (j(i17, i13, i10, i11)) {
            i16 |= 1;
        }
        int i18 = i16 << 1;
        if (j(i17, i15, i10, i11)) {
            i18 |= 1;
        }
        int i19 = i18 << 1;
        if (j(i17, i9, i10, i11)) {
            i19 |= 1;
        }
        int i20 = i19 << 1;
        if (j(i8, i13, i10, i11)) {
            i20 |= 1;
        }
        int i21 = i20 << 1;
        if (j(i8, i15, i10, i11)) {
            i21 |= 1;
        }
        int i22 = i21 << 1;
        return j(i8, i9, i10, i11) ? i22 | 1 : i22;
    }

    public final void l(int i8) {
        if (i8 != 16 && i8 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i8 * 8)));
        }
        this.f18027I = Integer.valueOf(i8);
    }

    public final long m() {
        switch (this.f18025G) {
            case 6:
                return ((C1878qM) this.f18026H).f20569l;
            default:
                M m7 = (M) this.f18027I;
                if (m7 != null) {
                    return m7.zzf();
                }
                return -1L;
        }
    }

    public final void n(int i8) {
        if (i8 < 10 || i8 > 16) {
            throw new GeneralSecurityException(p000a.r.f("Invalid tag size for AesCmacParameters: ", i8));
        }
        this.f18028J = Integer.valueOf(i8);
    }

    public final synchronized void o(int i8, int i9, long j8, long j9) {
        ((C0597l0) this.f18028J).f11263T.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        AtomicLong atomicLong = (AtomicLong) this.f18027I;
        if (atomicLong.get() != -1 && jElapsedRealtime - atomicLong.get() <= 1800000) {
            return;
        }
        p052g4.h hVarC = ((N3.b) ((InterfaceC0644u) this.f18026H)).c(new C0643t(0, Arrays.asList(new C0641q(36301, i8, 0, j8, j9, null, null, 0, i9))));
        p046f6.c cVar = new p046f6.c(this, 7, jElapsedRealtime);
        p052g4.r rVar = (p052g4.r) hVarC;
        rVar.getClass();
        rVar.b(p052g4.j.f25346a, cVar);
    }

    @Override // p052g4.d
    public final void onComplete(p052g4.h hVar) throws InterruptedException {
        ((X3.d) this.f18028J).removeCallbacksAndMessages(null);
        p052g4.i iVar = (p052g4.i) this.f18026H;
        if (hVar.h()) {
            iVar.d(hVar.f());
        }
        if (!((p052g4.r) hVar).f25372d) {
            Exception excE = hVar.e();
            excE.getClass();
            iVar.c(excE);
            return;
        }
        p052g4.k kVar = (p052g4.k) this.f18027I;
        int i8 = kVar.f25348G;
        Object obj = kVar.f25349H;
        switch (i8) {
            case 2:
                ((CountDownLatch) obj).await();
                break;
            default:
                ((p052g4.r) obj).m(null);
                break;
        }
    }

    public final C1144cD p() throws GeneralSecurityException {
        Xu xu;
        NG ngB;
        C1299fD c1299fD = (C1299fD) this.f18028J;
        if (c1299fD == null || (xu = (Xu) this.f18026H) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (c1299fD.f18733a != xu.e()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (c1299fD.a() && ((Integer) this.f18027I) == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!((C1299fD) this.f18028J).a() && ((Integer) this.f18027I) != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        C1247eD c1247eD = ((C1299fD) this.f18028J).f18734b;
        if (c1247eD == C1247eD.f18492d) {
            ngB = AbstractC2025tE.f21054a;
        } else if (c1247eD == C1247eD.f18491c) {
            ngB = AbstractC2025tE.a(((Integer) this.f18027I).intValue());
        } else {
            if (c1247eD != C1247eD.f18490b) {
                throw new IllegalStateException("Unknown AesGcmParameters.Variant: ".concat(String.valueOf(((C1299fD) this.f18028J).f18734b)));
            }
            ngB = AbstractC2025tE.b(((Integer) this.f18027I).intValue());
        }
        return new C1144cD((C1299fD) this.f18028J, (Xu) this.f18026H, ngB, (Integer) this.f18027I);
    }

    public final C1351gD q() throws GeneralSecurityException {
        Xu xu;
        NG ngB;
        C1505jD c1505jD = (C1505jD) this.f18028J;
        if (c1505jD == null || (xu = (Xu) this.f18026H) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (c1505jD.f19445a != xu.e()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (c1505jD.a() && ((Integer) this.f18027I) == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!((C1505jD) this.f18028J).a() && ((Integer) this.f18027I) != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        C1455iD c1455iD = ((C1505jD) this.f18028J).f19446b;
        if (c1455iD == C1455iD.f19279d) {
            ngB = AbstractC2025tE.f21054a;
        } else if (c1455iD == C1455iD.f19278c) {
            ngB = AbstractC2025tE.a(((Integer) this.f18027I).intValue());
        } else {
            if (c1455iD != C1455iD.f19277b) {
                throw new IllegalStateException("Unknown AesGcmSivParameters.Variant: ".concat(String.valueOf(((C1505jD) this.f18028J).f19446b)));
            }
            ngB = AbstractC2025tE.b(((Integer) this.f18027I).intValue());
        }
        return new C1351gD((C1505jD) this.f18028J, (Xu) this.f18026H, ngB, (Integer) this.f18027I);
    }

    public final OE r() throws GeneralSecurityException {
        Xu xu;
        NG ngA;
        RE re = (RE) this.f18028J;
        if (re == null || (xu = (Xu) this.f18026H) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (re.f16229a != xu.e()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (re.a() && ((Integer) this.f18027I) == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!((RE) this.f18028J).a() && ((Integer) this.f18027I) != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        QE qe = ((RE) this.f18028J).f16231c;
        if (qe == QE.f16002e) {
            ngA = AbstractC2025tE.f21054a;
        } else if (qe == QE.f16001d || qe == QE.f16000c) {
            ngA = AbstractC2025tE.a(((Integer) this.f18027I).intValue());
        } else {
            if (qe != QE.f15999b) {
                throw new IllegalStateException("Unknown AesCmacParametersParameters.Variant: ".concat(String.valueOf(((RE) this.f18028J).f16231c)));
            }
            ngA = AbstractC2025tE.b(((Integer) this.f18027I).intValue());
        }
        return new OE((RE) this.f18028J, (Xu) this.f18026H, ngA, (Integer) this.f18027I);
    }

    public final RE s() {
        Integer num = (Integer) this.f18027I;
        if (num == null) {
            throw new GeneralSecurityException("key size not set");
        }
        if (((Integer) this.f18028J) == null) {
            throw new GeneralSecurityException("tag size not set");
        }
        if (((QE) this.f18026H) != null) {
            return new RE(num.intValue(), ((Integer) this.f18028J).intValue(), (QE) this.f18026H);
        }
        throw new GeneralSecurityException("variant not set");
    }

    public final WE t() throws GeneralSecurityException {
        Xu xu;
        NG ngA;
        C1043aF c1043aF = (C1043aF) this.f18028J;
        if (c1043aF == null || (xu = (Xu) this.f18026H) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (c1043aF.f17848a != xu.e()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (c1043aF.a() && ((Integer) this.f18027I) == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!((C1043aF) this.f18028J).a() && ((Integer) this.f18027I) != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        ZE ze = ((C1043aF) this.f18028J).f17850c;
        if (ze == ZE.f17740e) {
            ngA = AbstractC2025tE.f21054a;
        } else if (ze == ZE.f17739d || ze == ZE.f17738c) {
            ngA = AbstractC2025tE.a(((Integer) this.f18027I).intValue());
        } else {
            if (ze != ZE.f17737b) {
                throw new IllegalStateException("Unknown HmacParameters.Variant: ".concat(String.valueOf(((C1043aF) this.f18028J).f17850c)));
            }
            ngA = AbstractC2025tE.b(((Integer) this.f18027I).intValue());
        }
        return new WE((C1043aF) this.f18028J, (Xu) this.f18026H, ngA, (Integer) this.f18027I);
    }

    public final void u(InterfaceC1556kC interfaceC1556kC, Uri uri, Map map, long j8, long j9, N n7) throws C2167w0 {
        boolean z7;
        F f8 = new F(interfaceC1556kC, j8, j9);
        this.f18027I = f8;
        if (((L) this.f18026H) != null) {
            return;
        }
        L[] lArrA = ((O) this.f18028J).a(uri, map);
        int length = lArrA.length;
        C1917rA c1917rAR = AbstractC2073uA.r(length);
        boolean z8 = true;
        if (length == 1) {
            this.f18026H = lArrA[0];
        } else {
            for (L l4 : lArrA) {
                try {
                    if (l4.d(f8)) {
                        this.f18026H = l4;
                        f8.f13266f = 0;
                        break;
                    } else {
                        c1917rAR.d(l4.zzd());
                        z7 = ((L) this.f18026H) != null || f8.f13264d == j8;
                    }
                } catch (EOFException unused) {
                    z7 = ((L) this.f18026H) != null || f8.f13264d == j8;
                } catch (Throwable th) {
                    if (((L) this.f18026H) == null && f8.f13264d != j8) {
                        z8 = false;
                    }
                    p113o3.r.M(z8);
                    f8.f13266f = 0;
                    throw th;
                }
                p113o3.r.M(z7);
                f8.f13266f = 0;
            }
            if (((L) this.f18026H) == null) {
                Iterator it = Cw.F0(AbstractC2073uA.u(lArrA), new C2064u1(23)).iterator();
                StringBuilder sb = new StringBuilder();
                a7.b.t(sb, it, ", ");
                String strG = p000a.r.g("None of the available extractors (", sb.toString(), ") could read the stream.");
                PA paH = c1917rAR.h();
                C2167w0 c2167w0 = new C2167w0(strG, null, false, 1);
                AbstractC2073uA.t(paH);
                throw c2167w0;
            }
        }
        ((L) this.f18026H).f(n7);
    }

    @Override // Z3.Y
    public final /* bridge */ /* synthetic */ Object zza() {
        C0427i c0427i = (C0427i) ((Z3.X) this.f18028J).zza();
        Z3.g0 g0VarA = ((Z3.h0) ((Z3.X) this.f18026H)).zza();
        return new Z3.b0(c0427i, g0VarA);
    }

    public /* synthetic */ C1093bD(int i8, Object obj) {
        this.f18025G = i8;
    }

    public /* synthetic */ C1093bD(p021c4.A1 a8, String str, Object obj, int i8) {
        this.f18025G = i8;
        this.f18028J = str;
        this.f18026H = obj;
        this.f18027I = a8;
    }

    public C1093bD(O o4) {
        this.f18025G = 7;
        this.f18028J = o4;
    }

    public /* synthetic */ C1093bD(Object obj) {
        this.f18025G = 4;
        this.f18027I = null;
        this.f18028J = null;
        this.f18026H = QE.f16002e;
    }

    public /* synthetic */ C1093bD(Object obj, Object obj2, Object obj3, int i8) {
        this.f18025G = i8;
        this.f18028J = obj;
        this.f18026H = obj2;
        this.f18027I = obj3;
    }

    public C1093bD(p176w5.b bVar) throws p130q5.e {
        int i8;
        int i9;
        this.f18025G = 23;
        int i10 = bVar.f31092H;
        if (i10 >= 8 && i10 <= 144 && (i8 = i10 & 1) == 0) {
            p198z5.d[] dVarArr = p198z5.d.f31918h;
            if (i8 == 0) {
                int i11 = bVar.f31091G;
                if ((i11 & 1) == 0) {
                    for (p198z5.d dVar : p198z5.d.f31918h) {
                        int i12 = dVar.f31920b;
                        if (i12 == i10 && (i9 = dVar.f31921c) == i11) {
                            this.f18027I = dVar;
                            if (i10 == i12) {
                                int i13 = dVar.f31922d;
                                int i14 = i12 / i13;
                                int i15 = dVar.f31923e;
                                int i16 = i9 / i15;
                                p176w5.b bVar2 = new p176w5.b(i16 * i15, i14 * i13);
                                for (int i17 = 0; i17 < i14; i17++) {
                                    int i18 = i17 * i13;
                                    for (int i19 = 0; i19 < i16; i19++) {
                                        int i20 = i19 * i15;
                                        for (int i21 = 0; i21 < i13; i21++) {
                                            int i22 = ((i13 + 2) * i17) + 1 + i21;
                                            int i23 = i18 + i21;
                                            for (int i24 = 0; i24 < i15; i24++) {
                                                if (bVar.b(((i15 + 2) * i19) + 1 + i24, i22)) {
                                                    bVar2.f(i20 + i24, i23);
                                                }
                                            }
                                        }
                                    }
                                }
                                this.f18028J = bVar2;
                                this.f18026H = new p176w5.b(bVar2.f31091G, bVar2.f31092H);
                                return;
                            }
                            throw new IllegalArgumentException("Dimension of bitMatrix must match the version size");
                        }
                    }
                    throw p130q5.e.a();
                }
            }
            throw p130q5.e.a();
        }
        throw p130q5.e.a();
    }

    public C1093bD(int i8) {
        this.f18025G = i8;
        if (i8 == 11) {
            this.f18028J = new C2531b(HttpUrl.FRAGMENT_ENCODE_SET, 0L, null);
            this.f18026H = new C2531b(HttpUrl.FRAGMENT_ENCODE_SET, 0L, null);
            this.f18027I = new ArrayList();
            return;
        }
        if (i8 != 21 && i8 != 22) {
            if (i8 == 27) {
                this.f18026H = C0416c.f8151b;
                return;
            }
            if (i8 != 28) {
                this.f18028J = new ArrayList();
                this.f18026H = C1352gE.f18916b;
                this.f18027I = null;
            } else {
                this.f18028J = Collections.emptyList();
                this.f18026H = C0416c.f8151b;
            }
        }
    }

    public C1093bD(Context context, C0597l0 c0597l0) {
        this.f18025G = 13;
        this.f18027I = new AtomicLong(-1L);
        this.f18026H = new N3.b(context, N3.b.f4940a, new C0645v("measurement:api"), com.google.android.gms.common.api.i.f11764c);
        this.f18028J = c0597l0;
    }

    public C1093bD(InterfaceC2044ti[] interfaceC2044tiArr) {
        this.f18025G = 6;
        C1878qM c1878qM = new C1878qM();
        c1878qM.f20570m = 0;
        c1878qM.f20572o = 0;
        c1878qM.f20573p = 0;
        byte[] bArr = Et.f13239f;
        c1878qM.f20571n = bArr;
        c1878qM.f20574q = bArr;
        C0937Ti c0937Ti = new C0937Ti();
        c0937Ti.f16704c = 1.0f;
        c0937Ti.f16705d = 1.0f;
        C0936Th c0936Th = C0936Th.f16698e;
        c0937Ti.f16706e = c0936Th;
        c0937Ti.f16707f = c0936Th;
        c0937Ti.f16708g = c0936Th;
        c0937Ti.f16709h = c0936Th;
        ByteBuffer byteBuffer = InterfaceC2044ti.f21093a;
        c0937Ti.f16712k = byteBuffer;
        c0937Ti.f16713l = byteBuffer.asShortBuffer();
        c0937Ti.f16714m = byteBuffer;
        c0937Ti.f16703b = -1;
        InterfaceC2044ti[] interfaceC2044tiArr2 = new InterfaceC2044ti[2];
        this.f18028J = interfaceC2044tiArr2;
        System.arraycopy(interfaceC2044tiArr, 0, interfaceC2044tiArr2, 0, 0);
        this.f18026H = c1878qM;
        this.f18027I = c0937Ti;
        InterfaceC2044ti[] interfaceC2044tiArr3 = (InterfaceC2044ti[]) this.f18028J;
        interfaceC2044tiArr3[0] = c1878qM;
        interfaceC2044tiArr3[1] = c0937Ti;
    }

    public C1093bD(C2531b c2531b) {
        this.f18025G = 11;
        this.f18028J = c2531b;
        this.f18026H = c2531b.clone();
        this.f18027I = new ArrayList();
    }

    public C1093bD(p176w5.a aVar) {
        this.f18025G = 24;
        this.f18026H = new K.k(19, 0);
        this.f18027I = new StringBuilder();
        this.f18028J = aVar;
    }
}
