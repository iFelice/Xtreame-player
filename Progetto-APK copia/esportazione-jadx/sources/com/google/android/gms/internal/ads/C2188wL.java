package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.net.Uri;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import android.util.SparseArray;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.UUID;
import java.util.regex.Matcher;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2188wL implements InterfaceC1255eL, InterfaceC2240xL {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f21664G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C2136vL f21665H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final PlaybackSession f21666I;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f21672O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public PlaybackMetrics.Builder f21673P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f21674Q;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public AbstractC0985Xa f21677T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public C1294f8 f21678U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public C1294f8 f21679V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public C1294f8 f21680W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public C1804p0 f21681X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public C1804p0 f21682Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public C1804p0 f21683Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f21684a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f21685b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f21686c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f21687d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f21688e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f21689f0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C2196we f21668K = new C2196we();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1521je f21669L = new C1521je();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final HashMap f21671N = new HashMap();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final HashMap f21670M = new HashMap();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final long f21667J = SystemClock.elapsedRealtime();

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f21675R = 0;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f21676S = 0;

    public C2188wL(Context context, PlaybackSession playbackSession) {
        this.f21664G = context.getApplicationContext();
        this.f21666I = playbackSession;
        C2136vL c2136vL = new C2136vL();
        this.f21665H = c2136vL;
        c2136vL.f21513d = this;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final /* synthetic */ void E() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final /* synthetic */ void a(C1804p0 c1804p0) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void b(C1204dL c1204dL, C1721nL c1721nL) {
        C2190wN c2190wN = c1204dL.f18325d;
        if (c2190wN == null) {
            return;
        }
        C1804p0 c1804p0 = (C1804p0) c1721nL.f20166J;
        c1804p0.getClass();
        C1294f8 c1294f8 = new C1294f8(c1804p0, this.f21665H.a(c1204dL.f18323b, c2190wN), 7);
        int i8 = c1721nL.f20163G;
        if (i8 != 0) {
            if (i8 == 1) {
                this.f21679V = c1294f8;
                return;
            } else if (i8 != 2) {
                if (i8 != 3) {
                    return;
                }
                this.f21680W = c1294f8;
                return;
            }
        }
        this.f21678U = c1294f8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void c(IOException iOException) {
    }

    public final void d(C1204dL c1204dL, String str) {
        C2190wN c2190wN = c1204dL.f18325d;
        if ((c2190wN == null || !c2190wN.b()) && str.equals(this.f21672O)) {
            f();
        }
        this.f21670M.remove(str);
        this.f21671N.remove(str);
    }

    /* JADX WARN: Code duplicated, block: B:113:0x01d1 A[PHI: r2
      0x01d1: PHI (r2v55 int) = (r2v36 int), (r2v86 int) binds: [B:187:0x02cf, B:112:0x01ce] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:114:0x01d4 A[PHI: r2
      0x01d4: PHI (r2v54 int) = (r2v36 int), (r2v86 int) binds: [B:187:0x02cf, B:112:0x01ce] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:115:0x01d7 A[PHI: r2
      0x01d7: PHI (r2v53 int) = (r2v36 int), (r2v86 int) binds: [B:187:0x02cf, B:112:0x01ce] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:116:0x01da A[PHI: r2
      0x01da: PHI (r2v52 int) = (r2v36 int), (r2v86 int) binds: [B:187:0x02cf, B:112:0x01ce] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:131:0x0201  */
    /* JADX WARN: Code duplicated, block: B:163:0x0272  */
    /* JADX WARN: Code duplicated, block: B:166:0x027a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:167:0x027c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:171:0x0283  */
    /* JADX WARN: Code duplicated, block: B:172:0x028f  */
    /* JADX WARN: Code duplicated, block: B:174:0x0295  */
    /* JADX WARN: Code duplicated, block: B:175:0x029d  */
    /* JADX WARN: Code duplicated, block: B:177:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:178:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:180:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:181:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:183:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:184:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:186:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:189:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:198:0x031c  */
    /* JADX WARN: Failed to calculate best type for var: r15v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v1 ??, new type: com.google.android.gms.internal.ads.f8
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r15v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v1 ??, new type: com.google.android.gms.internal.ads.f8
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r15v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v2 ??, new type: com.google.android.gms.internal.ads.f8
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r15v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v2 ??, new type: com.google.android.gms.internal.ads.f8
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v1 com.google.android.gms.internal.ads.f8, new type: com.google.android.gms.internal.ads.f8
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.applyResolvedVars(TypeSearch.java:100)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:76)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.runMultiVariableSearch(FixTypesVisitor.java:119)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 5 more
     */
    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void e(InterfaceC0959Vc interfaceC0959Vc, C0871Om c0871Om) {
        C1294f8 c1294f8;
        int i8;
        int i9;
        int i10;
        boolean z7;
        int i11;
        int errorCode;
        int iQ;
        C1672mO c1672mO;
        int i12;
        int i13;
        if (((C1751o) c0871Om.f15196H).f20216a.size() == 0) {
            return;
        }
        for (int i14 = 0; i14 < ((C1751o) c0871Om.f15196H).f20216a.size(); i14++) {
            int iA = ((C1751o) c0871Om.f15196H).a(i14);
            C1204dL c1204dL = (C1204dL) ((SparseArray) c0871Om.f15197I).get(iA);
            c1204dL.getClass();
            if (iA == 0) {
                C2136vL c2136vL = this.f21665H;
                synchronized (c2136vL) {
                    try {
                        c2136vL.f21513d.getClass();
                        AbstractC0774Ie abstractC0774Ie = c2136vL.f21514e;
                        c2136vL.f21514e = c1204dL.f18323b;
                        Iterator it = c2136vL.f21512c.values().iterator();
                        while (it.hasNext()) {
                            C2084uL c2084uL = (C2084uL) it.next();
                            if (!c2084uL.b(abstractC0774Ie, c2136vL.f21514e) || c2084uL.a(c1204dL)) {
                                it.remove();
                                if (c2084uL.f21222e) {
                                    if (c2084uL.f21218a.equals(c2136vL.f21515f)) {
                                        c2136vL.f(c2084uL);
                                    }
                                    ((C2188wL) c2136vL.f21513d).d(c1204dL, c2084uL.f21218a);
                                }
                            }
                        }
                        c2136vL.g(c1204dL);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else if (iA == 11) {
                this.f21665H.d(c1204dL, this.f21674Q);
            } else {
                this.f21665H.c(c1204dL);
            }
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (c0871Om.s(0)) {
            C1204dL c1204dL2 = (C1204dL) ((SparseArray) c0871Om.f15197I).get(0);
            c1204dL2.getClass();
            if (this.f21673P != null) {
                g(c1204dL2.f18323b, c1204dL2.f18325d);
            }
        }
        if (c0871Om.s(2) && this.f21673P != null) {
            AbstractC2073uA abstractC2073uA = interfaceC0959Vc.zzo().f13768a;
            int size = abstractC2073uA.size();
            int i15 = 0;
            loop2: while (true) {
                if (i15 >= size) {
                    c1672mO = null;
                    break;
                }
                C2198wg c2198wg = (C2198wg) abstractC2073uA.get(i15);
                int i16 = 0;
                while (true) {
                    i13 = i15 + 1;
                    if (i16 < c2198wg.f21720a) {
                        if (c2198wg.f21724e[i16] && (c1672mO = c2198wg.f21721b.f17072d[i16].f20387q) != null) {
                            break loop2;
                        } else {
                            i16++;
                        }
                    }
                }
                i15 = i13;
            }
            if (c1672mO != null) {
                PlaybackMetrics.Builder builder = this.f21673P;
                int i17 = Et.f13234a;
                int i18 = 0;
                while (true) {
                    if (i18 >= c1672mO.f19956J) {
                        i12 = 1;
                        break;
                    }
                    UUID uuid = c1672mO.f19953G[i18].f18223H;
                    if (uuid.equals(AbstractC2187wK.f21662d)) {
                        i12 = 3;
                        break;
                    } else if (uuid.equals(AbstractC2187wK.f21663e)) {
                        i12 = 2;
                        break;
                    } else {
                        if (uuid.equals(AbstractC2187wK.f21661c)) {
                            i12 = 6;
                            break;
                        }
                        i18++;
                    }
                }
                builder.setDrmType(i12);
            }
        }
        if (c0871Om.s(1011)) {
            this.f21688e0++;
        }
        AbstractC0985Xa abstractC0985Xa = this.f21677T;
        if (abstractC0985Xa != null) {
            Context context = this.f21664G;
            if (abstractC0985Xa.f17418G == 1001) {
                i11 = 20;
            } else {
                C1512jK c1512jK = (C1512jK) abstractC0985Xa;
                boolean z8 = c1512jK.f19452I == 1;
                int i19 = c1512jK.f19456M;
                Throwable cause = abstractC0985Xa.getCause();
                cause.getClass();
                int i20 = 28;
                if (cause instanceof IOException) {
                    if (cause instanceof C1148cH) {
                        iQ = ((C1148cH) cause).f18206I;
                        i11 = 5;
                    } else if (cause instanceof C0800Ka) {
                        i11 = 11;
                    } else {
                        boolean z9 = cause instanceof GG;
                        if (z9 || (cause instanceof CJ)) {
                            if (Kq.e(context).b() == 1) {
                                i11 = 3;
                            } else {
                                Throwable cause2 = cause.getCause();
                                if (cause2 instanceof UnknownHostException) {
                                    i11 = 6;
                                } else if (cause2 instanceof SocketTimeoutException) {
                                    i11 = 7;
                                } else {
                                    i11 = (z9 && ((GG) cause).f13495H == 1) ? 4 : 8;
                                }
                            }
                        } else if (abstractC0985Xa.f17418G == 1002) {
                            i11 = 21;
                        } else if (cause instanceof C2033tM) {
                            Throwable cause3 = cause.getCause();
                            cause3.getClass();
                            if (cause3 instanceof MediaDrm.MediaDrmStateException) {
                                errorCode = Et.q(((MediaDrm.MediaDrmStateException) cause3).getDiagnosticInfo());
                                switch (Et.p(errorCode)) {
                                    case 6002:
                                        i20 = 24;
                                        break;
                                    case 6003:
                                        break;
                                    case 6004:
                                        i20 = 25;
                                        break;
                                    case 6005:
                                        i20 = 26;
                                        break;
                                    default:
                                        i20 = 27;
                                        break;
                                }
                                iQ = errorCode;
                                i11 = i20;
                            } else if (Et.f13234a >= 23 && (cause3 instanceof MediaDrmResetException)) {
                                i11 = 27;
                            } else if (cause3 instanceof NotProvisionedException) {
                                i11 = 24;
                            } else if (cause3 instanceof DeniedByServerException) {
                                i11 = 29;
                            } else if (cause3 instanceof AM) {
                                i11 = 23;
                            } else {
                                i11 = 30;
                            }
                        } else if ((cause instanceof JF) && (cause.getCause() instanceof FileNotFoundException)) {
                            Throwable cause4 = cause.getCause();
                            cause4.getClass();
                            Throwable cause5 = cause4.getCause();
                            i11 = ((cause5 instanceof ErrnoException) && ((ErrnoException) cause5).errno == OsConstants.EACCES) ? 32 : 31;
                        } else {
                            i11 = 9;
                        }
                    }
                } else if (z8) {
                    i11 = 35;
                    if (i19 != 0 && i19 != 1) {
                        if (!z8 && i19 == 3) {
                            i11 = 15;
                        } else if (!z8 && i19 == 2) {
                            i11 = 23;
                        } else if (cause instanceof SM) {
                            iQ = Et.q(((SM) cause).f16430I);
                            i11 = 13;
                        } else if (cause instanceof OM) {
                            iQ = ((OM) cause).f15161G;
                            i11 = 14;
                        } else if (cause instanceof OutOfMemoryError) {
                            i11 = 14;
                        } else if (cause instanceof RL) {
                            iQ = ((RL) cause).f16258G;
                            i11 = 17;
                        } else if (cause instanceof SL) {
                            iQ = ((SL) cause).f16425G;
                            i11 = 18;
                        } else if (cause instanceof MediaCodec.CryptoException) {
                            errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                            switch (Et.p(errorCode)) {
                                case 6002:
                                    i20 = 24;
                                    break;
                                case 6003:
                                    break;
                                case 6004:
                                    i20 = 25;
                                    break;
                                case 6005:
                                    i20 = 26;
                                    break;
                                default:
                                    i20 = 27;
                                    break;
                            }
                            iQ = errorCode;
                            i11 = i20;
                        } else {
                            i11 = 22;
                        }
                    }
                } else if (!z8) {
                    if (!z8) {
                    }
                    if (cause instanceof SM) {
                        iQ = Et.q(((SM) cause).f16430I);
                        i11 = 13;
                    } else if (cause instanceof OM) {
                        iQ = ((OM) cause).f15161G;
                        i11 = 14;
                    } else if (cause instanceof OutOfMemoryError) {
                        i11 = 14;
                    } else if (cause instanceof RL) {
                        iQ = ((RL) cause).f16258G;
                        i11 = 17;
                    } else if (cause instanceof SL) {
                        iQ = ((SL) cause).f16425G;
                        i11 = 18;
                    } else if (cause instanceof MediaCodec.CryptoException) {
                        errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                        switch (Et.p(errorCode)) {
                            case 6002:
                                i20 = 24;
                                break;
                            case 6003:
                                break;
                            case 6004:
                                i20 = 25;
                                break;
                            case 6005:
                                i20 = 26;
                                break;
                            default:
                                i20 = 27;
                                break;
                        }
                        iQ = errorCode;
                        i11 = i20;
                    } else {
                        i11 = 22;
                    }
                } else {
                    if (!z8) {
                    }
                    if (cause instanceof SM) {
                        iQ = Et.q(((SM) cause).f16430I);
                        i11 = 13;
                    } else if (cause instanceof OM) {
                        iQ = ((OM) cause).f15161G;
                        i11 = 14;
                    } else if (cause instanceof OutOfMemoryError) {
                        i11 = 14;
                    } else if (cause instanceof RL) {
                        iQ = ((RL) cause).f16258G;
                        i11 = 17;
                    } else if (cause instanceof SL) {
                        iQ = ((SL) cause).f16425G;
                        i11 = 18;
                    } else if (cause instanceof MediaCodec.CryptoException) {
                        errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                        switch (Et.p(errorCode)) {
                            case 6002:
                                i20 = 24;
                                break;
                            case 6003:
                                break;
                            case 6004:
                                i20 = 25;
                                break;
                            case 6005:
                                i20 = 26;
                                break;
                            default:
                                i20 = 27;
                                break;
                        }
                        iQ = errorCode;
                        i11 = i20;
                    } else {
                        i11 = 22;
                    }
                }
                this.f21666I.reportPlaybackErrorEvent(new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f21667J).setErrorCode(i11).setSubErrorCode(iQ).setException(abstractC0985Xa).build());
                this.f21689f0 = true;
                this.f21677T = null;
            }
            iQ = 0;
            this.f21666I.reportPlaybackErrorEvent(new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f21667J).setErrorCode(i11).setSubErrorCode(iQ).setException(abstractC0985Xa).build());
            this.f21689f0 = true;
            this.f21677T = null;
        }
        if (c0871Om.s(2)) {
            C0761Hg c0761HgZzo = interfaceC0959Vc.zzo();
            boolean zA = c0761HgZzo.a(2);
            boolean zA2 = c0761HgZzo.a(1);
            boolean zA3 = c0761HgZzo.a(3);
            if (zA || zA2) {
                z7 = zA3;
            } else if (zA3) {
                z7 = true;
            } else {
                c1294f8 = 0;
                i8 = 4;
            }
            if (zA || Objects.equals(this.f21681X, null)) {
                i8 = 4;
            } else {
                int i21 = this.f21681X == null ? 1 : 0;
                this.f21681X = null;
                i8 = 4;
                n(1, jElapsedRealtime, null, i21);
            }
            if (!zA2 && !Objects.equals(this.f21682Y, c1294f8)) {
                int i22 = this.f21682Y == null ? 1 : 0;
                this.f21682Y = c1294f8;
                n(0, jElapsedRealtime, null, i22);
            }
            if (!z7 && !Objects.equals(this.f21683Z, c1294f8)) {
                int i23 = this.f21683Z == null ? 1 : 0;
                this.f21683Z = c1294f8;
                n(2, jElapsedRealtime, null, i23);
            }
        } else {
            c1294f8 = 0;
            i8 = 4;
        }
        if (o(this.f21678U)) {
            C1804p0 c1804p0 = (C1804p0) this.f21678U.f18728J;
            if (c1804p0.f20390t != -1) {
                if (!Objects.equals(this.f21681X, c1804p0)) {
                    int i24 = this.f21681X == null ? 1 : 0;
                    this.f21681X = c1804p0;
                    n(1, jElapsedRealtime, c1804p0, i24);
                }
                this.f21678U = c1294f8;
            }
        }
        if (o(this.f21679V)) {
            C1804p0 c1804p1 = (C1804p0) this.f21679V.f18728J;
            if (!Objects.equals(this.f21682Y, c1804p1)) {
                int i25 = this.f21682Y == null ? 1 : 0;
                this.f21682Y = c1804p1;
                n(0, jElapsedRealtime, c1804p1, i25);
            }
            this.f21679V = c1294f8;
        }
        if (o(this.f21680W)) {
            C1804p0 c1804p2 = (C1804p0) this.f21680W.f18728J;
            if (!Objects.equals(this.f21683Z, c1804p2)) {
                int i26 = this.f21683Z == null ? 1 : 0;
                this.f21683Z = c1804p2;
                n(2, jElapsedRealtime, c1804p2, i26);
            }
            this.f21680W = c1294f8;
        }
        switch (Kq.e(this.f21664G).b()) {
            case 0:
                i9 = 0;
                break;
            case 1:
                i9 = 9;
                break;
            case 2:
                i9 = 2;
                break;
            case 3:
                i9 = 4;
                break;
            case 4:
                i9 = 5;
                break;
            case 5:
                i9 = 6;
                break;
            case 6:
            case 8:
            default:
                i9 = 1;
                break;
            case 7:
                i9 = 3;
                break;
            case 9:
                i9 = 8;
                break;
            case 10:
                i9 = 7;
                break;
        }
        if (i9 != this.f21676S) {
            this.f21676S = i9;
            this.f21666I.reportNetworkEvent(new NetworkEvent.Builder().setNetworkType(i9).setTimeSinceCreatedMillis(jElapsedRealtime - this.f21667J).build());
        }
        if (interfaceC0959Vc.zzf() != 2) {
            this.f21684a0 = false;
        }
        C1049aL c1049aL = (C1049aL) interfaceC0959Vc;
        c1049aL.f17884c.c();
        C2135vK c2135vK = c1049aL.f17883b;
        c2135vK.r();
        if (c2135vK.f21479P.f16244f == null) {
            this.f21685b0 = false;
        } else if (c0871Om.s(10)) {
            this.f21685b0 = true;
        }
        int iZzf = interfaceC0959Vc.zzf();
        if (this.f21684a0) {
            i10 = 5;
        } else if (this.f21685b0) {
            i10 = 13;
        } else if (iZzf == i8) {
            i10 = 11;
        } else {
            i10 = 12;
            if (iZzf == 2) {
                int i27 = this.f21675R;
                if (i27 == 0 || i27 == 2 || i27 == 12) {
                    i10 = 2;
                } else if (interfaceC0959Vc.u()) {
                    i10 = interfaceC0959Vc.zzg() != 0 ? 10 : 6;
                } else {
                    i10 = 7;
                }
            } else if (iZzf == 3) {
                i10 = interfaceC0959Vc.u() ? interfaceC0959Vc.zzg() != 0 ? 9 : 3 : 4;
            } else if (iZzf != 1 || this.f21675R == 0) {
                i10 = this.f21675R;
            }
        }
        if (this.f21675R != i10) {
            this.f21675R = i10;
            this.f21689f0 = true;
            this.f21666I.reportPlaybackStateEvent(new PlaybackStateEvent.Builder().setState(this.f21675R).setTimeSinceCreatedMillis(jElapsedRealtime - this.f21667J).build());
        }
        if (c0871Om.s(1028)) {
            C2136vL c2136vL2 = this.f21665H;
            C1204dL c1204dL3 = (C1204dL) ((SparseArray) c0871Om.f15197I).get(1028);
            c1204dL3.getClass();
            c2136vL2.b(c1204dL3);
        }
    }

    public final void f() {
        PlaybackMetrics.Builder builder = this.f21673P;
        if (builder != null && this.f21689f0) {
            builder.setAudioUnderrunCount(this.f21688e0);
            this.f21673P.setVideoFramesDropped(this.f21686c0);
            this.f21673P.setVideoFramesPlayed(this.f21687d0);
            Long l4 = (Long) this.f21670M.get(this.f21672O);
            this.f21673P.setNetworkTransferDurationMillis(l4 == null ? 0L : l4.longValue());
            Long l8 = (Long) this.f21671N.get(this.f21672O);
            this.f21673P.setNetworkBytesRead(l8 == null ? 0L : l8.longValue());
            this.f21673P.setStreamSource((l8 == null || l8.longValue() <= 0) ? 0 : 1);
            this.f21666I.reportPlaybackMetrics(this.f21673P.build());
        }
        this.f21673P = null;
        this.f21672O = null;
        this.f21688e0 = 0;
        this.f21686c0 = 0;
        this.f21687d0 = 0;
        this.f21681X = null;
        this.f21682Y = null;
        this.f21683Z = null;
        this.f21689f0 = false;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0046  */
    /* JADX WARN: Code duplicated, block: B:48:0x009f  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cb  */
    public final void g(AbstractC0774Ie abstractC0774Ie, C2190wN c2190wN) {
        Matcher matcher;
        String strGroup;
        int i8;
        PlaybackMetrics.Builder builder = this.f21673P;
        if (c2190wN == null) {
            return;
        }
        int iA = abstractC0774Ie.a(c2190wN.f21690a);
        if (iA != -1) {
            C1521je c1521je = this.f21669L;
            int i9 = 0;
            abstractC0774Ie.d(iA, c1521je, false);
            int i10 = c1521je.f19467c;
            C2196we c2196we = this.f21668K;
            abstractC0774Ie.e(i10, c2196we, 0L);
            C1239e5 c1239e5 = c2196we.f21709b.f21836b;
            if (c1239e5 != null) {
                int i11 = Et.f13234a;
                Uri uri = c1239e5.f18481a;
                String scheme = uri.getScheme();
                if (scheme == null || !p113o3.r.F("rtsp", scheme)) {
                    String lastPathSegment = uri.getLastPathSegment();
                    if (lastPathSegment != null) {
                        int iLastIndexOf = lastPathSegment.lastIndexOf(46);
                        if (iLastIndexOf >= 0) {
                            String strM = p113o3.r.m(lastPathSegment.substring(iLastIndexOf + 1));
                            strM.getClass();
                            switch (strM) {
                                case "ism":
                                case "isml":
                                    i8 = 1;
                                    break;
                                case "mpd":
                                    i8 = 0;
                                    break;
                                case "m3u8":
                                    i8 = 2;
                                    break;
                                default:
                                    i8 = 4;
                                    break;
                            }
                            if (i8 == 4) {
                                String path = uri.getPath();
                                path.getClass();
                                matcher = Et.f13240g.matcher(path);
                                if (matcher.matches()) {
                                    strGroup = matcher.group(2);
                                    if (strGroup == null) {
                                        i9 = 1;
                                    } else if (!strGroup.contains("format=mpd-time-csf")) {
                                        if (strGroup.contains("format=m3u8-aapl")) {
                                            i9 = 2;
                                        } else {
                                            i9 = 1;
                                        }
                                    }
                                } else {
                                    i9 = 4;
                                }
                            } else {
                                i9 = i8;
                            }
                        } else {
                            String path2 = uri.getPath();
                            path2.getClass();
                            matcher = Et.f13240g.matcher(path2);
                            if (matcher.matches()) {
                                strGroup = matcher.group(2);
                                if (strGroup == null) {
                                    i9 = 1;
                                } else if (!strGroup.contains("format=mpd-time-csf")) {
                                    if (strGroup.contains("format=m3u8-aapl")) {
                                        i9 = 2;
                                    } else {
                                        i9 = 1;
                                    }
                                }
                            } else {
                                i9 = 4;
                            }
                        }
                    } else {
                        i9 = 4;
                    }
                } else {
                    i9 = 3;
                }
                if (i9 == 0) {
                    i9 = 3;
                } else if (i9 != 1) {
                    i9 = i9 != 2 ? 1 : 4;
                } else {
                    i9 = 5;
                }
            }
            builder.setStreamType(i9);
            long j8 = c2196we.f21717j;
            if (j8 != -9223372036854775807L && !c2196we.f21716i && !c2196we.f21714g && !c2196we.b()) {
                builder.setMediaDurationMillis(Et.w(j8));
            }
            builder.setPlaybackType(true != c2196we.b() ? 1 : 2);
            this.f21689f0 = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void h(AbstractC0985Xa abstractC0985Xa) {
        this.f21677T = abstractC0985Xa;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void i(C1151cK c1151cK) {
        this.f21686c0 += c1151cK.f18214g;
        this.f21687d0 += c1151cK.f18212e;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void j(C1204dL c1204dL, int i8, long j8) {
        C2190wN c2190wN = c1204dL.f18325d;
        if (c2190wN != null) {
            String strA = this.f21665H.a(c1204dL.f18323b, c2190wN);
            HashMap map = this.f21671N;
            Long l4 = (Long) map.get(strA);
            HashMap map2 = this.f21670M;
            Long l8 = (Long) map2.get(strA);
            map.put(strA, Long.valueOf((l4 == null ? 0L : l4.longValue()) + j8));
            map2.put(strA, Long.valueOf((l8 != null ? l8.longValue() : 0L) + ((long) i8)));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final /* synthetic */ void k(C1804p0 c1804p0) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void l(C2043th c2043th) {
        C1294f8 c1294f8 = this.f21678U;
        if (c1294f8 != null) {
            C1804p0 c1804p0 = (C1804p0) c1294f8.f18728J;
            if (c1804p0.f20390t == -1) {
                K k8 = new K(c1804p0);
                k8.f14277r = c2043th.f21090a;
                k8.f14278s = c2043th.f21091b;
                this.f21678U = new C1294f8(new C1804p0(k8), (String) c1294f8.f18727I, 7);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void m(int i8) {
        if (i8 == 1) {
            this.f21684a0 = true;
            i8 = 1;
        }
        this.f21674Q = i8;
    }

    public final void n(int i8, long j8, C1804p0 c1804p0, int i9) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = C0.D.f(i8).setTimeSinceCreatedMillis(j8 - this.f21667J);
        if (c1804p0 != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(i9 != 1 ? 1 : 2);
            String str = c1804p0.f20382l;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = c1804p0.f20383m;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = c1804p0.f20380j;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i10 = c1804p0.f20379i;
            if (i10 != -1) {
                timeSinceCreatedMillis.setBitrate(i10);
            }
            int i11 = c1804p0.f20389s;
            if (i11 != -1) {
                timeSinceCreatedMillis.setWidth(i11);
            }
            int i12 = c1804p0.f20390t;
            if (i12 != -1) {
                timeSinceCreatedMillis.setHeight(i12);
            }
            int i13 = c1804p0.f20362A;
            if (i13 != -1) {
                timeSinceCreatedMillis.setChannelCount(i13);
            }
            int i14 = c1804p0.f20363B;
            if (i14 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i14);
            }
            String str4 = c1804p0.f20374d;
            if (str4 != null) {
                int i15 = Et.f13234a;
                String[] strArrSplit = str4.split("-", -1);
                Pair pairCreate = Pair.create(strArrSplit[0], strArrSplit.length >= 2 ? strArrSplit[1] : null);
                timeSinceCreatedMillis.setLanguage((String) pairCreate.first);
                Object obj = pairCreate.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f8 = c1804p0.f20391u;
            if (f8 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f8);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.f21689f0 = true;
        this.f21666I.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }

    public final boolean o(C1294f8 c1294f8) {
        String str;
        if (c1294f8 == null) {
            return false;
        }
        C2136vL c2136vL = this.f21665H;
        String str2 = (String) c1294f8.f18727I;
        synchronized (c2136vL) {
            str = c2136vL.f21515f;
        }
        return str2.equals(str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final /* synthetic */ void q(int i8) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final /* synthetic */ void zzh(int i8) {
    }
}
