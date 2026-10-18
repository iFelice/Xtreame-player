package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.u1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2064u1 implements InterfaceC2165vz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21192a;

    public /* synthetic */ C2064u1(int i8) {
        this.f21192a = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
    public final Object apply(Object obj) {
        int i8 = 3;
        int i9 = 4;
        String str = null;
        switch (this.f21192a) {
            case 0:
                return (D1) obj;
            case 1:
                return (D1) obj;
            case 2:
                Throwable th = (Throwable) obj;
                H9 h9 = M9.f14657a;
                if (((Boolean) AbstractC1864q8.f20555i.l()).booleanValue()) {
                    p083k3.l.f25980A.f25987g.i("prepareClickUrl.attestation1", th);
                }
                return "failure_click_attok";
            case 3:
                List list = C0728Fd.f13368l;
                return null;
            case 4:
                return "failure_click_attok";
            case 5:
                return new C0658Ai((List) obj);
            case 6:
                return new C0658Ai((AbstractC2252xi) obj);
            case 7:
                ArrayList arrayList = new ArrayList();
                for (K8 k8 : (List) obj) {
                    if (k8 != null) {
                        arrayList.add(k8);
                    }
                }
                return arrayList;
            case 8:
                ArrayList arrayList2 = new ArrayList();
                for (C2204wm c2204wm : (List) obj) {
                    if (c2204wm != null) {
                        arrayList2.add(c2204wm);
                    }
                }
                return arrayList2;
            case 9:
                return Collections.singletonList(Cw.N1((C0721El) obj));
            case 10:
                ArrayList arrayList3 = (ArrayList) obj;
                if (arrayList3.isEmpty()) {
                    return null;
                }
                return new Js(arrayList3, 1);
            case 11:
                A3.b bVar = (A3.b) obj;
                return new Xs(bVar.f635a, bVar.f636b, 0);
            case 12:
                p167v3.r rVar = (p167v3.r) obj;
                return rVar != null ? new Cs(rVar.f30681a, i8) : new Cs(str, i8);
            case 13:
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, (Exception) obj);
                return new Cs(str, i8);
            case 14:
                return new Cs((String) obj, i9);
            case 15:
                String str2 = (String) obj;
                if (str2 == null) {
                    return null;
                }
                return new Cs(str2, 5);
            case 16:
                return new Bt(i9, (Bundle) obj);
            case 17:
                String str3 = (String) obj;
                if (str3 == null) {
                    return null;
                }
                return new Cs(str3, 6);
            case 18:
                return null;
            case 19:
                return (C1953rv) obj;
            case 20:
                String str4 = ((Uv) obj).f16904a;
                if (TextUtils.isEmpty(str4)) {
                    return HttpUrl.FRAGMENT_ENCODE_SET;
                }
                return p120p3.g.c() ? "fakeForAdDebugLog" : str4;
            case 21:
                String str5 = ((Uv) obj).f16905b;
                if (TextUtils.isEmpty(str5)) {
                    return HttpUrl.FRAGMENT_ENCODE_SET;
                }
                return p120p3.g.c() ? "fakeForAdDebugLog" : str5;
            case 22:
                return new C2032tL((InterfaceC1840pl) obj);
            case 23:
                L l4 = (L) obj;
                l4.getClass();
                return l4.getClass().getSimpleName();
            case 24:
                C1104bO c1104bOZzi = ((InterfaceC2138vN) obj).zzi();
                c1104bOZzi.getClass();
                return AbstractC2073uA.t(Cw.F0(c1104bOZzi.f18043b, new C2064u1(25)));
            default:
                C1104bO c1104bO = C1104bO.f18041d;
                return Integer.valueOf(((C0961Ve) obj).f17071c);
        }
    }

    public /* synthetic */ C2064u1(int i8, int i9) {
        this.f21192a = i8;
    }
}
