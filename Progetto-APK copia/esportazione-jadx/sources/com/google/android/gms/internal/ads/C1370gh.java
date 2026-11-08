package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1370gh implements InterfaceC1215dh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1895qo f18961b;

    public /* synthetic */ C1370gh(C1895qo c1895qo, int i8) {
        this.f18960a = i8;
        this.f18961b = c1895qo;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0053  */
    @Override // com.google.android.gms.internal.ads.InterfaceC1215dh
    public final void a(HashMap map) {
        byte b8;
        int i8 = this.f18960a;
        C1895qo c1895qo = this.f18961b;
        switch (i8) {
            case 0:
                String str = (String) map.get("gesture");
                if (!TextUtils.isEmpty(str)) {
                    int iHashCode = str.hashCode();
                    if (iHashCode != 97520651) {
                        if (iHashCode == 109399814 && str.equals("shake")) {
                            b8 = 0;
                        } else {
                            b8 = -1;
                        }
                    } else if (str.equals("flick")) {
                        b8 = 1;
                    } else {
                        b8 = -1;
                    }
                    if (b8 == 0) {
                        c1895qo.k(EnumC1687mo.f19997H, true);
                    } else if (b8 == 1) {
                        c1895qo.k(EnumC1687mo.f19998I, true);
                    } else {
                        c1895qo.k(EnumC1687mo.f19996G, true);
                    }
                    break;
                }
                break;
            default:
                String str2 = (String) map.get("test_mode_enabled");
                if (!TextUtils.isEmpty(str2)) {
                    c1895qo.e(str2.equals("true"));
                    break;
                }
                break;
        }
    }
}
