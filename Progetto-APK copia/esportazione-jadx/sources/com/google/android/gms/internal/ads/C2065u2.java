package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.u2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2065u2 implements Comparator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21193G;

    public /* synthetic */ C2065u2(int i8) {
        this.f21193G = i8;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x01ac  */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparator xa;
        C1606lA c1606lA = AbstractC1710nA.f20074a;
        int i8 = 1;
        switch (this.f21193G) {
            case 0:
                return Integer.compare(((C2117v2) obj).f21427a.f21636b, ((C2117v2) obj2).f21427a.f21636b);
            case 1:
                return Long.compare(((C2013t2) obj).f21030b, ((C2013t2) obj2).f21030b);
            case 2:
                return ((byte[]) obj).length - ((byte[]) obj2).length;
            case 3:
                V5 v5 = (V5) obj;
                V5 v7 = (V5) obj2;
                int i9 = v5.f16958c - v7.f16958c;
                return i9 != 0 ? i9 : Long.compare(v5.f16956a, v7.f16956a);
            case 4:
                R5 r7 = (R5) obj;
                R5 r8 = (R5) obj2;
                float f8 = r7.f16208b;
                float f9 = r8.f16208b;
                if (f8 < f9) {
                    i8 = -1;
                } else if (f8 <= f9) {
                    float f10 = r7.f16207a;
                    float f11 = r8.f16207a;
                    if (f10 < f11) {
                        i8 = -1;
                    } else if (f10 <= f11) {
                        float f12 = (r7.f16210d - f8) * (r7.f16209c - f10);
                        float f13 = (r8.f16210d - f9) * (r8.f16209c - f11);
                        if (f12 > f13) {
                            i8 = -1;
                        } else if (f12 >= f13) {
                            return 0;
                        }
                    }
                }
                return i8;
            case 5:
                return ((C1804p0) obj2).f20379i - ((C1804p0) obj).f20379i;
            case 6:
                Integer num = (Integer) obj;
                Integer num2 = (Integer) obj2;
                C1554kA c1554kA = C1983sO.f20895j;
                if (num.intValue() == -1) {
                    if (num2.intValue() != -1) {
                        return -1;
                    }
                    i8 = 0;
                } else if (num2.intValue() != -1) {
                    return num.intValue() - num2.intValue();
                }
                return i8;
            case 7:
                return Integer.compare(((C1466iO) ((List) obj).get(0)).f19303L, ((C1466iO) ((List) obj2).get(0)).f19303L);
            case 8:
                return ((C1414hO) Collections.max((List) obj)).compareTo((C1414hO) Collections.max((List) obj2));
            case 9:
                List list = (List) obj;
                List list2 = (List) obj2;
                int i10 = 11;
                int i11 = 12;
                return C1606lA.f(new C2065u2(i10).compare((C1931rO) Collections.max(list, new C2065u2(i10)), (C1931rO) Collections.max(list2, new C2065u2(i10)))).b(list.size(), list2.size()).c((C1931rO) Collections.max(list, new C2065u2(i11)), (C1931rO) Collections.max(list2, new C2065u2(i11)), new C2065u2(i11)).a();
            case 10:
                return ((C1776oO) ((List) obj).get(0)).compareTo((C1776oO) ((List) obj2).get(0));
            case 11:
                C1931rO c1931rO = (C1931rO) obj;
                C1931rO c1931rO2 = (C1931rO) obj2;
                AbstractC1710nA abstractC1710nAD = c1606lA.d(c1931rO.f20727N, c1931rO2.f20727N).b(c1931rO.f20732S, c1931rO2.f20732S).d(c1931rO.f20733T, c1931rO2.f20733T).d(c1931rO.f20728O, c1931rO2.f20728O).d(c1931rO.f20724K, c1931rO2.f20724K).d(c1931rO.f20726M, c1931rO2.f20726M);
                Integer numValueOf = Integer.valueOf(c1931rO.f20731R);
                Integer numValueOf2 = Integer.valueOf(c1931rO2.f20731R);
                NA.f14891G.getClass();
                AbstractC1710nA abstractC1710nAC = abstractC1710nAD.c(numValueOf, numValueOf2, WA.f17175G);
                boolean z7 = c1931rO.f20735V;
                AbstractC1710nA abstractC1710nAD2 = abstractC1710nAC.d(z7, c1931rO2.f20735V);
                boolean z8 = c1931rO.f20736W;
                AbstractC1710nA abstractC1710nAD3 = abstractC1710nAD2.d(z8, c1931rO2.f20736W);
                if (z7 && z8) {
                    abstractC1710nAD3 = abstractC1710nAD3.b(c1931rO.f20737X, c1931rO2.f20737X);
                }
                return abstractC1710nAD3.a();
            case 12:
                C1931rO c1931rO3 = (C1931rO) obj;
                C1931rO c1931rO4 = (C1931rO) obj2;
                if (c1931rO3.f20724K && c1931rO3.f20727N) {
                    xa = C1983sO.f20895j;
                } else {
                    C1554kA c1554kA2 = C1983sO.f20895j;
                    c1554kA2.getClass();
                    xa = new XA(c1554kA2);
                }
                c1931rO3.f20725L.getClass();
                return c1606lA.c(Integer.valueOf(c1931rO3.f20730Q), Integer.valueOf(c1931rO4.f20730Q), xa).c(Integer.valueOf(c1931rO3.f20729P), Integer.valueOf(c1931rO4.f20729P), xa).a();
            case 13:
                return ((KO) obj).f14374a - ((KO) obj2).f14374a;
            default:
                return Float.compare(((KO) obj).f14376c, ((KO) obj2).f14376c);
        }
    }

    public /* synthetic */ C2065u2(int i8, int i9) {
        this.f21193G = i8;
    }
}
