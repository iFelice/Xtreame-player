package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.os.Handler;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1773oL implements InterfaceC1119bo, InterfaceC1828pO {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f20258G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f20259H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f20260I;

    public /* synthetic */ C1773oL(int i8, Object obj, Object obj2) {
        this.f20258G = i8;
        this.f20259H = obj;
        this.f20260I = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0088  */
    @Override // com.google.android.gms.internal.ads.InterfaceC1828pO
    public final PA a(int i8, C0961Ve c0961Ve, int[] iArr) {
        int i9;
        int i10;
        int i11;
        int i12;
        Point point;
        int i13 = this.f20258G;
        Object obj = this.f20259H;
        Object obj2 = this.f20260I;
        switch (i13) {
            case 5:
                C1554kA c1554kA = C1983sO.f20895j;
                C1620lO c1620lO = (C1620lO) obj;
                int i14 = ((int[]) obj2)[i8];
                int i15 = c1620lO.f20468a;
                int i16 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                if (i15 != Integer.MAX_VALUE) {
                    int i17 = c1620lO.f20469b;
                    if (i17 != Integer.MAX_VALUE) {
                        int i18 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                        for (int i19 = 0; i19 < c0961Ve.f17069a; i19++) {
                            C1804p0 c1804p0 = c0961Ve.f17072d[i19];
                            int i20 = c1804p0.f20389s;
                            if (i20 > 0 && (i10 = c1804p0.f20390t) > 0) {
                                if (!c1620lO.f20470c) {
                                    i11 = i15;
                                    i12 = i17;
                                } else if ((i20 > i10) != (i15 > i17)) {
                                    i12 = i15;
                                    i11 = i17;
                                } else {
                                    i11 = i15;
                                    i12 = i17;
                                }
                                int i21 = i20 * i12;
                                int i22 = i10 * i11;
                                if (i21 >= i22) {
                                    int i23 = Et.f13234a;
                                    point = new Point(i11, ((i22 + i20) - 1) / i20);
                                } else {
                                    int i24 = Et.f13234a;
                                    point = new Point(((i21 + i10) - 1) / i10, i12);
                                }
                                int i25 = c1804p0.f20389s;
                                int i26 = i25 * i10;
                                if (i25 >= ((int) (point.x * 0.98f)) && i10 >= ((int) (point.y * 0.98f)) && i26 < i18) {
                                    i18 = i26;
                                }
                            }
                        }
                        i16 = i18;
                    }
                    i9 = 4;
                } else {
                    i9 = 4;
                    i16 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                }
                p113o3.r.q(i9, "initialCapacity");
                Object[] objArrCopyOf = new Object[i9];
                int i27 = 0;
                int i28 = 0;
                while (i27 < c0961Ve.f17069a) {
                    int iA = c0961Ve.f17072d[i27].a();
                    C1931rO c1931rO = new C1931rO(i8, c0961Ve, i27, c1620lO, iArr[i27], i16 == Integer.MAX_VALUE || (iA != -1 && iA <= i16));
                    int i29 = i28 + 1;
                    int length = objArrCopyOf.length;
                    if (length < i29) {
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, AbstractC1762oA.e(length, i29));
                    }
                    objArrCopyOf[i28] = c1931rO;
                    i27++;
                    i28 = i29;
                }
                return AbstractC2073uA.s(i28, objArrCopyOf);
            default:
                C1554kA c1554kA2 = C1983sO.f20895j;
                p113o3.r.q(4, "initialCapacity");
                Object[] objArrCopyOf2 = new Object[4];
                int i30 = 0;
                int i31 = 0;
                while (i30 < c0961Ve.f17069a) {
                    C1776oO c1776oO = new C1776oO(i8, c0961Ve, i30, (C1620lO) obj, iArr[i30], (String) obj2);
                    int i32 = i31 + 1;
                    int length2 = objArrCopyOf2.length;
                    if (length2 < i32) {
                        objArrCopyOf2 = Arrays.copyOf(objArrCopyOf2, AbstractC1762oA.e(length2, i32));
                    }
                    objArrCopyOf2[i31] = c1776oO;
                    i30++;
                    i31 = i32;
                }
                return AbstractC2073uA.s(i31, objArrCopyOf2);
        }
    }

    public final void b(C1151cK c1151cK) {
        synchronized (c1151cK) {
        }
        Handler handler = (Handler) this.f20259H;
        if (handler != null) {
            handler.post(new KL(this, c1151cK, 1));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1119bo
    public final void zza(Object obj) {
        int i8 = this.f20258G;
        Object obj2 = this.f20260I;
        switch (i8) {
            case 0:
                ((InterfaceC1255eL) obj).b((C1204dL) this.f20259H, (C1721nL) obj2);
                break;
            case 1:
                ((InterfaceC1255eL) obj).h((AbstractC0985Xa) obj2);
                break;
            case 2:
                ((InterfaceC1255eL) obj).i((C1151cK) obj2);
                break;
            default:
                C2043th c2043th = (C2043th) obj2;
                ((InterfaceC1255eL) obj).l(c2043th);
                int i9 = c2043th.f21090a;
                break;
        }
    }

    public C1773oL(Handler handler, SurfaceHolderCallbackC1979sK surfaceHolderCallbackC1979sK) {
        this.f20258G = 4;
        this.f20259H = handler;
        this.f20260I = surfaceHolderCallbackC1979sK;
    }
}
