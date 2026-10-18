package com.google.android.gms.ads;

import R3.b;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.widget.LinearLayout;
import com.google.android.gms.internal.ads.BinderC1054ab;
import p090l3.C3073d;
import p090l3.C3093n;
import p090l3.C3097p;
import p090l3.InterfaceC3105t0;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class OutOfContextTestingActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3093n c3093n = C3097p.f26618f.f26620b;
        BinderC1054ab binderC1054ab = new BinderC1054ab();
        c3093n.getClass();
        InterfaceC3105t0 interfaceC3105t0 = (InterfaceC3105t0) new C3073d(this, binderC1054ab).d(this, false);
        if (interfaceC3105t0 == null) {
            finish();
            return;
        }
        setContentView(R.layout.admob_empty_layout);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.layout);
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            return;
        }
        String stringExtra = intent.getStringExtra("adUnit");
        if (stringExtra == null) {
            finish();
            return;
        }
        try {
            interfaceC3105t0.h1(stringExtra, new b(this), new b(linearLayout));
        } catch (RemoteException unused) {
            finish();
        }
    }
}
