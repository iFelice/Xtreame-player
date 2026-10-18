package com.google.android.gms.internal.ads;

import D0.C0129t;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class V9 implements W9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2040te f16963b;

    public /* synthetic */ V9(C2040te c2040te, int i8) {
        this.f16962a = i8;
        this.f16963b = c2040te;
    }

    @Override // com.google.android.gms.internal.ads.W9
    public final void a(JSONObject jSONObject) {
        int i8 = this.f16962a;
        C2040te c2040te = this.f16963b;
        switch (i8) {
            case 0:
                c2040te.b(jSONObject);
                break;
            default:
                try {
                    c2040te.b(jSONObject);
                } catch (IllegalStateException unused) {
                    return;
                } catch (JSONException e8) {
                    c2040te.c(e8);
                    return;
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.W9
    public final void c(String str) {
        int i8 = this.f16962a;
        C2040te c2040te = this.f16963b;
        switch (i8) {
            case 0:
                c2040te.c(new C0129t(str));
                break;
            default:
                try {
                    if (str == null) {
                        c2040te.c(new C0129t());
                    } else {
                        c2040te.c(new C0129t(str));
                    }
                } catch (IllegalStateException unused) {
                    return;
                }
                break;
        }
    }
}
