package com.google.android.gms.internal.ads;

import D0.C0129t;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ra, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0901Ra implements W9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0725Fa f16261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2040te f16262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0915Sa f16263c;

    public C0901Ra(C0915Sa c0915Sa, C0725Fa c0725Fa, C2040te c2040te) {
        this.f16263c = c0915Sa;
        this.f16261a = c0725Fa;
        this.f16262b = c2040te;
    }

    @Override // com.google.android.gms.internal.ads.W9
    public final void a(JSONObject jSONObject) {
        C0725Fa c0725Fa = this.f16261a;
        C2040te c2040te = this.f16262b;
        try {
            try {
                c2040te.b(((InterfaceC0845Na) this.f16263c.f16433c).d(jSONObject));
            } catch (IllegalStateException unused) {
            } catch (JSONException e8) {
                c2040te.c(e8);
            }
        } finally {
            c0725Fa.s();
        }
    }

    @Override // com.google.android.gms.internal.ads.W9
    public final void c(String str) {
        C0725Fa c0725Fa = this.f16261a;
        C2040te c2040te = this.f16262b;
        try {
            if (str == null) {
                c2040te.c(new C0129t());
            } else {
                c2040te.c(new C0129t(str));
            }
        } catch (IllegalStateException unused) {
        } finally {
            c0725Fa.s();
        }
    }
}
