package com.google.android.tv.ads.controls;

import Y.AbstractComponentCallbacksC0406s;
import Y.C0389a;
import Y.F;
import Y.K;
import android.R;
import android.os.Bundle;
import com.google.android.gms.internal.atv_ads_framework.N0;
import com.google.android.gms.internal.atv_ads_framework.O0;
import com.google.android.gms.internal.atv_ads_framework.x0;
import java.util.List;
import p039f.AbstractActivityC3000o;
import p153t4.a;
import p153t4.b;

/* JADX INFO: loaded from: classes.dex */
public final class FallbackImageActivity extends AbstractActivityC3000o {
    /* JADX WARN: Code duplicated, block: B:11:0x004f  */
    @Override // Y.AbstractActivityC0409v, p000a.m, D.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        Bundle bundle2 = new Bundle();
        if (extras != null) {
            bundle2.putBoolean("render_error_message", extras.getBoolean("render_error_message"));
            b bVar = (b) extras.getParcelable("icon_click_fallback_images");
            if (bVar != null) {
                List list = bVar.f30303G;
                if (list.isEmpty() || ((a) list.get(0)).f30302K == null) {
                    x0 x0VarC = x0.C(this);
                    N0 n0L = O0.l();
                    n0L.e();
                    n0L.g(2);
                    n0L.f(6);
                    x0VarC.E((O0) n0L.b());
                    bundle2.putBoolean("render_error_message", true);
                } else {
                    a aVar = (a) list.get(0);
                    bundle2.putString("wta_uri", aVar.f30302K);
                    bundle2.putString("wta_alt_text", aVar.f30300I);
                }
            } else {
                x0 x0VarC2 = x0.C(this);
                N0 n0L2 = O0.l();
                n0L2.e();
                n0L2.g(2);
                n0L2.f(6);
                x0VarC2.E((O0) n0L2.b());
                bundle2.putBoolean("render_error_message", true);
            }
        } else {
            x0 x0VarC3 = x0.C(this);
            N0 n0L3 = O0.l();
            n0L3.e();
            n0L3.g(2);
            n0L3.f(5);
            x0VarC3.E((O0) n0L3.b());
            bundle2.putBoolean("render_error_message", true);
        }
        K kR = this.f7985X.R();
        kR.getClass();
        C0389a c0389a = new C0389a(kR);
        c0389a.f7827q = true;
        F f8 = c0389a.f7811a;
        if (f8 == null) {
            throw new IllegalStateException("Creating a Fragment requires that this FragmentTransaction was built with FragmentManager.beginTransaction()");
        }
        if (c0389a.f7812b == null) {
            throw new IllegalStateException("The FragmentManager must be attached to itshost to create a Fragment");
        }
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sA = f8.a(SideDrawerFragment.class.getName());
        K k8 = abstractComponentCallbacksC0406sA.f7949Y;
        if (k8 != null && (k8.f7713F || k8.f7714G)) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        abstractComponentCallbacksC0406sA.f7937M = bundle2;
        c0389a.g(R.id.content, abstractComponentCallbacksC0406sA);
        c0389a.d(false);
    }
}
